import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

import 'src/models/issue.dart';
import 'src/services/gemini_service.dart';
import 'src/services/github_service.dart';
import 'src/services/hacker_news_service.dart';

/// A class that generates a GitHub PR report.
class ReportGenerator {
  final GitHubService _githubService;
  final GeminiService _geminiService;
  final HackerNewsService _hackerNewsService;
  final _log = Logger('GeminiService');

  /// Creates a new instance of [ReportGenerator].
  ReportGenerator({
    required GitHubService githubService,
    required GeminiService geminiService,
    required HackerNewsService hackerNewsService,
  }) : _githubService = githubService,
       _geminiService = geminiService,
       _hackerNewsService = hackerNewsService;

  /// Creates a new instance of [ReportGenerator] using a GitHub token and a Gemini API key.
  factory ReportGenerator.withTokens({
    required String githubToken,
    required String geminiApiKey,
  }) {
    return ReportGenerator(
      githubService: GitHubService.withToken(githubToken),
      geminiService: GeminiService.withApiKey(geminiApiKey),
      hackerNewsService: HackerNewsService(),
    );
  }

  Future<String> generateReport({
    required List<String> repoSlugs,
    required DateTime startDate,
    required DateTime endDate,
    List<String> excludedAuthors = const [],
    bool skipHackerNews = false,
  }) async {
    final List<String> individualReports = [];

    for (final slug in repoSlugs) {
      final splits = slug.split('/');
      final report = await generateSingleRepoReport(
        owner: splits[0],
        repo: splits[1],
        startDate: startDate,
        endDate: endDate,
        excludedAuthors: excludedAuthors,
      );
      individualReports.add(report);
    }

    final multiReportSummary = await _geminiService.summarizeMultiReport(
      individualReports.join('\n\n'),
    );

    final hackerNewsSection = skipHackerNews
        ? ''
        : await _generateHackerNewsSection();

    final buffer = StringBuffer();
    buffer.writeln('# Overall Summary');
    buffer.writeln(multiReportSummary);
    buffer.writeln('\n');
    buffer.writeln(individualReports.join('\n'));
    buffer.writeln('\n$hackerNewsSection\n');

    return buffer.toString();
  }

  /// Generates a GitHub PR report for a given repository and date range.
  Future<String> generateSingleRepoReport({
    required String owner,
    required String repo,
    required DateTime startDate,
    required DateTime endDate,
    List<String> excludedAuthors = const [],
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
      excludeAuthors: excludedAuthors,
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

    return '$header\n$overallSummary\n\n$prBuffer\n$issueBuffer';
  }

  Future<String> _generateHackerNewsSection() async {
    _log.info('Fetching top Hacker News stories...');
    final hnBuffer = StringBuffer();
    hnBuffer.writeln('## Top Hacker News Stories\n');
    try {
      final ids = (await _hackerNewsService.getTopStoryIds()).take(25);

      for (final id in ids) {
        final story = await _hackerNewsService.getStory(id);

        hnBuffer.writeln(
          '### ${_getHackerNewsScoreEmojis(story.score)} '
          '\[${story.score}\] '
          '[${story.title ?? 'No title'}](${story.url ?? ''})',
        );

        hnBuffer.writeln(
          '* **Author:** [${story.by}]'
          '(https://news.ycombinator.com/user?id=${story.by}) | '
          '**Comments:** [${story.descendants}]'
          '(https://news.ycombinator.com/item?id=${story.id})',
        );

        final text = story.text;

        if (text != null && text.isNotEmpty) {
          hnBuffer.write('* ');
          hnBuffer.writeln(await _geminiService.summarizeHackerNewsText(text));
        }

        hnBuffer.writeln('');
      }
    } catch (e) {
      _log.warning('Could not fetch Hacker News stories: $e');
      hnBuffer.writeln('Could not fetch Hacker News stories.');
    }

    return hnBuffer.toString();
  }

  String _getHackerNewsScoreEmojis(int? score) => switch (score) {
    null || < 100 => '',
    < 250 => '🔥',
    < 600 => '🔥🔥',
    _ => '🔥🔥🔥',
  };

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
    final pacificTime = dateTime.toUtc().subtract(
      const Duration(hours: 8),
    ); // UTC-8 for Pacific Time
    return DateFormat('yyyy-MM-dd hh:mm a').format(pacificTime);
  }
}
