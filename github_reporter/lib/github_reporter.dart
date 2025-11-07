import 'dart:io';

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

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

    final report = StringBuffer();
    report.writeln('# GitHub PR Report for $owner/$repo');
    report.writeln('## ${_formatDateRange(startDate, endDate)}');
    report.writeln();

    for (final pr in pullRequests) {
      _log.info('Generating summary for PR #${pr.number}...');

      report.writeln('### [PR #${pr.number}](${pr.htmlUrl}): ${pr.title}');
      report.writeln('* **Author:** [${pr.user?.login}](${pr.user?.htmlUrl})');
      report.writeln('* **Merged At:** ${_formatDateTime(pr.mergedAt)}');
      report.writeln('* **Comments:** ${pr.commentsCount}');

      if (pr.body != null && pr.body!.isNotEmpty) {
        final diff = await _githubService.getPullRequestDiff(
          owner: owner,
          repo: repo,
          number: pr.number!,
        );
        final summary = await _geminiService.getSummary('${pr.body}\n\n$diff');
        report.writeln('*   **Summary:** $summary');
      }
      report.writeln();
      _log.info('Finished generating summary for PR #${pr.number}.');
    }

    return report.toString();
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
