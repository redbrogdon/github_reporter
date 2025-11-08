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

    // Report header
    final header =
        '''
# GitHub PR Report for $owner/$repo
## ${_formatDateRange(startDate, endDate)}
''';

    final prBuffer = StringBuffer();
    prBuffer.writeln('## Merged Pull Requests\n');

    if (pullRequests.isEmpty) {
      prBuffer.writeln('No pull requests were merged during this time.\n');
    } else {
      for (final pr in pullRequests) {
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

        prBuffer.writeln('''
### ${_getCommentEmojis(pr.comments)}[PR #${pr.number}](${pr.htmlUrl}): ${pr.title}
* **Author:** [${pr.user.login}](${pr.user.htmlUrl})
* **Merged At:** ${_formatDateTime(pr.mergedAt)}
* **Comments:** ${pr.comments}
* **Summary:** $summary
''');
      }
    }

    final issueBuffer = StringBuffer();
    issueBuffer.writeln('## Closed Issues\n');

    if (closedIssues.isEmpty) {
      issueBuffer.writeln('No issues were closed during this time.\n');
    } else {
      for (final issue in closedIssues) {
        issueBuffer.write('''
### [Issue #${issue.number}](${issue.htmlUrl}): ${issue.title}
* **Author:** [${issue.user.login}](${issue.user.htmlUrl})
* **Closed At:** ${_formatDateTime(issue.closedAt)}
''');

        if (issue.reactions.totalCount > 0) {
          issueBuffer.writeln(
            '* **Reactions:** '
            '**${issue.reactions.totalCount}** -- '
            '${_getReactionEmojis(issue.reactions)}',
          );
        }

        issueBuffer.writeln();
      }
    }

    final overallSummary = await _geminiService.getOverallSummary(
      prBuffer.toString(),
      issueBuffer.toString(),
    );

    return '''
$header
$overallSummary\n
$prBuffer
$issueBuffer
''';
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
    final start = DateFormat('yyyy-MM-dd').format(startDate);
    final end = DateFormat('yyyy-MM-dd').format(endDate);
    if (start == end) {
      return 'From $start';
    } else {
      return 'From $start to $end';
    }
  }

  String _formatDateTime(DateTime? dateTime) {
    if (dateTime == null) {
      return 'N/A';
    }
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }
}
