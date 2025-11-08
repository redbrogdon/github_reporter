import 'package:github_reporter/github_reporter.dart';
import 'package:github_reporter/src/models/issue.dart';
import 'package:github_reporter/src/models/pull_request.dart';
import 'package:github_reporter/src/models/user.dart';
import 'package:github_reporter/src/services/gemini_service.dart';
import 'package:github_reporter/src/services/github_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockGitHubService extends Mock implements GitHubService {}

class MockGeminiService extends Mock implements GeminiService {}

void main() {
  group('ReportGenerator', () {
    late ReportGenerator reportGenerator;
    late MockGitHubService mockGitHubService;
    late MockGeminiService mockGeminiService;

    setUp(() {
      mockGitHubService = MockGitHubService();
      mockGeminiService = MockGeminiService();
      reportGenerator = ReportGenerator(
        githubService: mockGitHubService,
        geminiService: mockGeminiService,
      );
    });

    test('generateReport returns a correctly formatted report', () async {
      final pr = PullRequest(
        number: 1,
        title: 'Test PR',
        htmlUrl: 'https://github.com/owner/repo/pull/1',
        user: User(login: 'testuser', htmlUrl: 'https://github.com/testuser'),
        mergedAt: DateTime.parse('2025-01-01T12:00:00Z'),
        comments: 2,
        body: 'This is a test PR body.',
      );

      when(
        () => mockGitHubService.getMergedPullRequests(
          owner: 'owner',
          repo: 'repo',
          startDate: any(named: 'startDate'),
          endDate: any(named: 'endDate'),
          excludeAuthors: any(named: 'excludeAuthors'),
        ),
      ).thenAnswer((_) async => [pr]);

      when(
        () => mockGitHubService.getClosedIssues(
          owner: 'owner',
          repo: 'repo',
          startDate: any(named: 'startDate'),
          endDate: any(named: 'endDate'),
        ),
      ).thenAnswer((_) async => []);

      when(
        () => mockGitHubService.getPullRequestDiff(
          owner: 'owner',
          repo: 'repo',
          number: 1,
        ),
      ).thenAnswer((_) => Future.value('Test diff'));

      when(
        () => mockGeminiService.getSummary(
          'This is a test PR body.\n\nTest diff',
        ),
      ).thenAnswer((_) async => 'Test summary');

      final report = await reportGenerator.generateReport(
        owner: 'owner',
        repo: 'repo',
        startDate: DateTime.parse('2025-01-01'),
        endDate: DateTime.parse('2025-01-31'),
      );

      expect(report, contains('# GitHub PR Report for owner/repo'));
      expect(report, contains('## From 2025-01-01 to 2025-01-31'));
      expect(
        report,
        contains('### [PR #1](https://github.com/owner/repo/pull/1): Test PR'),
      );
      expect(
        report,
        contains('* **Author:** [testuser](https://github.com/testuser)'),
      );
      expect(report, contains('* **Merged At:** 2025-01-01'));
      expect(report, contains('* **Comments:** 2'));
      expect(report, contains('*   **Summary:** Test summary'));
      verify(
        () => mockGitHubService.getPullRequestDiff(
          owner: 'owner',
          repo: 'repo',
          number: 1,
        ),
      ).called(1);
    });

    test('generateReport returns a correctly formatted report with reactions',
        () async {
      final issue = Issue(
        number: 1,
        title: 'Test Issue',
        htmlUrl: 'https://github.com/owner/repo/issues/1',
        user: User(login: 'testuser', htmlUrl: 'https://github.com/testuser'),
        closedAt: DateTime.parse('2025-01-01T12:00:00Z'),
        reactions: Reactions(
          totalCount: 1,
          plusOne: 1,
          minusOne: 0,
          laugh: 0,
          hooray: 0,
          confused: 0,
          heart: 0,
          rocket: 0,
          eyes: 0,
        ),
      );

      when(
        () => mockGitHubService.getMergedPullRequests(
          owner: 'owner',
          repo: 'repo',
          startDate: any(named: 'startDate'),
          endDate: any(named: 'endDate'),
          excludeAuthors: any(named: 'excludeAuthors'),
        ),
      ).thenAnswer((_) async => []);

      when(
        () => mockGitHubService.getClosedIssues(
          owner: 'owner',
          repo: 'repo',
          startDate: any(named: 'startDate'),
          endDate: any(named: 'endDate'),
        ),
      ).thenAnswer((_) async => [issue]);

      final report = await reportGenerator.generateReport(
        owner: 'owner',
        repo: 'repo',
        startDate: DateTime.parse('2025-01-01'),
        endDate: DateTime.parse('2025-01-31'),
      );

      expect(report, contains('## Closed Issues'));
      expect(
        report,
        contains(
            '* **Reactions:** 1 👍 1'),
      );
    });
  });
}
