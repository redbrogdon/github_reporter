import 'src/services/gemini_service.dart';
import 'src/services/github_service.dart';

/// A class that generates a GitHub PR report.
class ReportGenerator {
  final GitHubService _githubService;
  final GeminiService _geminiService;

  /// Creates a new instance of [ReportGenerator].
  ReportGenerator({
    required GitHubService githubService,
    required GeminiService geminiService,
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
  }) async {
    final pullRequests = await _githubService.getMergedPullRequests(
      owner: owner,
      repo: repo,
      startDate: startDate,
      endDate: endDate,
    );

    final report = StringBuffer();
    report.writeln('# GitHub PR Report for $owner/$repo');
    report.writeln('## From $startDate to $endDate');
    report.writeln();

    for (final pr in pullRequests) {
      report.writeln('### PR #${pr.number}: ${pr.title}');
      report.writeln('*   **Author:** ${pr.user?.login}');
      report.writeln('*   **Merged At:** ${pr.mergedAt}');
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
    }

    return report.toString();
  }
}
