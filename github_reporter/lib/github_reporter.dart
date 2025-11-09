import 'package:github_reporter/src/models/pull_request.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

import 'src/models/issue.dart';
import 'src/services/gemini_service.dart';
import 'src/services/github_service.dart';

/// A class that generates a GitHub PR report.
class ReportGenerator {
  final GitHubService _githubService;
  final GeminiService _geminiService;
  final _log = Logger('GeminiService');

  /// Creates a new instance of [ReportGenerator].
  ReportGenerator({
    required GitHubService githubService,
    required GeminiService geminiService,
    bool verbose = false,
  }) : _githubService = githubService,
       _geminiService = geminiService;

  /// Creates a new instance of [ReportGenerator] using a GitHub token and a Gemini API key.
  factory ReportGenerator.withTokens({
    required String githubToken,
    required String geminiApiKey,
  }) {
    return ReportGenerator(
      githubService: GitHubService.withToken(githubToken),
      geminiService: GeminiService.withApiKey(geminiApiKey),
    );
  }

  /// Generates a GitHub PR report for a given repository and date range.
  Future<String> generateReport({
    required String owner,
    required String repo,
    required DateTime startDate,
    required DateTime endDate,
    List<String> excludeAuthors = const [],
  }) async {
    await initializeDateFormatting('en_US', null);

    _log.info(
      'Generating report for $owner/$repo from $startDate to $endDate...',
    );

    final pullRequests = await _githubService.getMergedPullRequests(
      owner: owner,
      repo: repo,
      startDate: startDate,
      endDate: endDate,
      excludeAuthors: excludeAuthors,
    );

    _log.info('Found ${pullRequests.length} merged pull requests.');

    final closedIssues = await _githubService.getClosedIssues(
      owner: owner,
      repo: repo,
      startDate: startDate,
      endDate: endDate,
    );

    _log.info('Found ${closedIssues.length} closed issues.');

    final prBuffer = StringBuffer();
    prBuffer.writeln('## Pull requests');
    prBuffer.writeln('');

    if (pullRequests.isEmpty) {
      prBuffer.writeln('No pull requests were merged during this time.');
    } else {
      for (final pr in pullRequests) {
        prBuffer.write(await generatePullRequestEntry(owner, repo, pr));
        prBuffer.writeln();
      }
    }

    final issueBuffer = StringBuffer();
    issueBuffer.writeln('## Issues');
    issueBuffer.writeln('');

    if (closedIssues.isEmpty) {
      issueBuffer.writeln('No issues were closed during this time.');
    } else {
      for (final issue in closedIssues) {
        issueBuffer.write(await generateIssueEntry(issue));
        issueBuffer.writeln();
      }
    }

    final overallSummary = await _geminiService.getOverallSummary(
      prBuffer.toString(),
      issueBuffer.toString(),
    );

    return '''# GitHub PR Report for $owner/$repo
_${_formatDateRange(startDate, endDate)}_

$overallSummary

${prBuffer.toString().trim()}
${issueBuffer.toString().trim()}
''';
  }

  Future<String> generatePullRequestEntry(
    String owner,
    String repo,
    PullRequest pr,
  ) async {
    _log.info('Generating summary for PR #${pr.number}...');

    final diff = await _githubService.getPullRequestDiff(
      owner: owner,
      repo: repo,
      number: pr.number,
    );

    final summary = await _geminiService.getPullRequestSummary(
      pr.title,
      pr.body ?? '',
      diff,
    );

    return '### ${_getCommentEmojis(pr.comments)}[PR #${pr.number}](${pr.htmlUrl}): ${pr.title}\n'
        '* **Author:** [${pr.user.login}](${pr.user.htmlUrl})\n'
        '* **Merged At:** ${_formatDateTime(pr.mergedAt)}\n'
        '* **Comments:** ${pr.comments}\n'
        '* **Summary:** $summary\n';
  }

  Future<String> generateIssueEntry(Issue issue) async {
    final issueBuffer = StringBuffer();
    issueBuffer.writeln(
      '### [Issue #${issue.number}](${issue.htmlUrl}): ${issue.title}',
    );
    issueBuffer.writeln(
      '* **Author:** [${issue.user.login}](${issue.user.htmlUrl})',
    );
    issueBuffer.writeln('* **Closed At:** ${_formatDateTime(issue.closedAt)}');

    if (issue.reactions.totalCount > 0) {
      issueBuffer.writeln(
        '* **Reactions:** '
        '**${issue.reactions.totalCount}** -- '
        '${_getReactionEmojis(issue.reactions)}',
      );
    }

    return issueBuffer.toString();
  }

  String _getReactionEmojis(Reactions reactions) {
    final emojis = <String>[];
    if (reactions.plusOne > 0) {
      emojis.add('👍 ${reactions.plusOne}');
    }
    if (reactions.minusOne > 0) {
      emojis.add('👎 ${reactions.minusOne}');
    }
    if (reactions.laugh > 0) {
      emojis.add('😄 ${reactions.laugh}');
    }
    if (reactions.hooray > 0) {
      emojis.add('🎉 ${reactions.hooray}');
    }
    if (reactions.confused > 0) {
      emojis.add('😕 ${reactions.confused}');
    }
    if (reactions.heart > 0) {
      emojis.add('❤️ ${reactions.heart}');
    }
    if (reactions.rocket > 0) {
      emojis.add('🚀 ${reactions.rocket}');
    }
    if (reactions.eyes > 0) {
      emojis.add('👀 ${reactions.eyes}');
    }
    return emojis.join(' ');
  }

  String _getCommentEmojis(int comments) {
    if (comments > 10) {
      return '🔥🔥🔥 ';
    } else if (comments > 5) {
      return '🔥 ';
    } else {
      return '';
    }
  }

  String _formatDateRange(DateTime startDate, DateTime endDate) {
    final start = _formatDateTime(startDate);
    final end = _formatDateTime(endDate);

    if (start == end) {
      return 'From $start';
    } else {
      return 'From $start to $end';
    }
  }

  String _formatDateTime(DateTime? dateTime) {
    if (dateTime == null) {
      return '';
    }
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }
}
