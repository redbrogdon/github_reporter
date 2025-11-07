import 'dart:io';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'src/services/gemini_service.dart';
import 'src/services/github_service.dart';

/// A class that generates a GitHub PR report.
class ReportGenerator {
  final GitHubService _githubService;
  final GeminiService _geminiService;
  final bool _verbose;

  /// Creates a new instance of [ReportGenerator].
  ReportGenerator({
    required GitHubService githubService,
    required GeminiService geminiService,
    bool verbose = false,
  }) : _githubService = githubService,
       _geminiService = geminiService,
       _verbose = verbose;

  /// Creates a new instance of [ReportGenerator] using a GitHub token and a Gemini API key.
  factory ReportGenerator.withTokens({
    required String githubToken,
    required String geminiApiKey,
    bool verbose = false,
  }) {
    return ReportGenerator(
      githubService: GitHubService.withToken(githubToken, verbose: verbose),
      geminiService: GeminiService.withApiKey(geminiApiKey),
      verbose: verbose,
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
    if (_verbose) {
      stderr.writeln(
        'Generating report for $owner/$repo from $startDate to $endDate...',
      );
      stderr.writeln('Fetching merged pull requests from $owner/$repo...');
    }
    final pullRequests = await _githubService.getMergedPullRequests(
      owner: owner,
      repo: repo,
      startDate: startDate,
      endDate: endDate,
      excludeAuthors: excludeAuthors,
    );
    if (_verbose) {
      stderr.writeln('Found ${pullRequests.length} merged pull requests.');
    }

    final report = StringBuffer();
    report.writeln('# GitHub PR Report for $owner/$repo');
    report.writeln('## From $startDate to $endDate');
    report.writeln();

    for (final pr in pullRequests) {
      if (_verbose) {
        stderr.writeln('Generating summary for PR #${pr.number}...');
      }
      report.writeln('### [PR #${pr.number}](${pr.htmlUrl}): ${pr.title}');
      report.writeln(
        '*   **Author:** [${pr.user?.login}](${pr.user?.htmlUrl})',
      );
      report.writeln('*   **Merged At:** ${_formatDateTime(pr.mergedAt)}');
      report.writeln('*   **Comments:** ${pr.commentsCount}');
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
      if (_verbose) {
        stderr.writeln('Finished generating summary for PR #${pr.number}.');
      }
    }

    return report.toString();
  }

  String _formatDateTime(DateTime? dateTime) {
    if (dateTime == null) {
      return 'N/A';
    }
    final pacificTime = dateTime.toUtc().subtract(const Duration(hours: 8));
    return DateFormat.jm().format(pacificTime);
  }
}
