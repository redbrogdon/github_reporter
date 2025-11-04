import 'package:github_reporter/src/services/github_service.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:github/github.dart';

class MockGitHub extends Mock implements GitHub {}

class MockPullRequestsService extends Mock implements PullRequestsService {}

void main() {
  group('GitHubService', () {
    late GitHubService gitHubService;
    late MockGitHub mockGitHub;
    late MockPullRequestsService mockPullRequestsService;

    setUp(() {
      mockGitHub = MockGitHub();
      mockPullRequestsService = MockPullRequestsService();
      when(() => mockGitHub.pullRequests).thenReturn(mockPullRequestsService);
      gitHubService = GitHubService(mockGitHub);
    });

    test('getMergedPullRequests filters correctly', () async {
      final pr1 = PullRequest()..mergedAt = DateTime.parse('2025-01-15');
      final pr2 = PullRequest()..mergedAt = DateTime.parse('2025-02-15');
      final pr3 = PullRequest()..mergedAt = null;

      final slug = RepositorySlug('owner', 'repo');

      when(
        () => mockPullRequestsService.list(
          slug,
          state: 'closed',
          sort: 'updated',
          direction: 'desc',
        ),
      ).thenAnswer((_) => Stream.fromIterable([pr1, pr2, pr3]));

      final result = await gitHubService.getMergedPullRequests(
        owner: 'owner',
        repo: 'repo',
        startDate: DateTime.parse('2025-01-01'),
        endDate: DateTime.parse('2025-01-31'),
      );

      expect(result, hasLength(1));
      expect(result.first.mergedAt, DateTime.parse('2025-01-15'));
    });
    test('getPullRequestDiff returns the diff', () async {
      final mockHttpClient = MockHttpClient();
      when(() => mockGitHub.client).thenReturn(mockHttpClient);
      when(
        () => mockHttpClient.get(
          Uri.parse('https://api.github.com/repos/owner/repo/pulls/1'),
          headers: {
            'Accept': 'application/vnd.github.v3.diff',
          },
        ),
      ).thenAnswer((_) async => Response('Test diff', 200));

      final result = await gitHubService.getPullRequestDiff(
        owner: 'owner',
        repo: 'repo',
        number: 1,
      );

      expect(result, 'Test diff');
    });
  });
}

class MockHttpClient extends Mock implements Client {}
