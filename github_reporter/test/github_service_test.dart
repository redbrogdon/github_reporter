import 'dart:convert';

import 'package:github_reporter/src/services/github_service.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:github/github.dart';

class MockGitHub extends Mock implements GitHub {}

class MockPullRequestsService extends Mock implements PullRequestsService {}

class MockSearchService extends Mock implements SearchService {}

void main() {
  group('GitHubService', () {
    late GitHubService gitHubService;
    late MockGitHub mockGitHub;
    late MockPullRequestsService mockPullRequestsService;
    late MockSearchService mockSearchService;

    setUp(() {
      mockGitHub = MockGitHub();
      mockPullRequestsService = MockPullRequestsService();
      mockSearchService = MockSearchService();
      when(() => mockGitHub.pullRequests).thenReturn(mockPullRequestsService);
      when(() => mockGitHub.search).thenReturn(mockSearchService);
      gitHubService = GitHubService(mockGitHub);
    });

    test('getMergedPullRequests uses search and gets PRs', () async {
      final issue1 = Issue.fromJson(jsonDecode('{"number": 123}'));
      final pr1 = PullRequest()..number = 123;

      final slug = RepositorySlug('owner', 'repo');
      final startDate = DateTime.parse('2025-01-01');
      final endDate = DateTime.parse('2025-01-31');
      final query =
          'repo:owner/repo is:pr is:merged '
          'merged:2025-01-01..2025-01-31';

      when(
        () => mockSearchService.issues(query),
      ).thenAnswer((_) => Stream.fromIterable([issue1]));
      when(
        () => mockPullRequestsService.get(slug, 123),
      ).thenAnswer((_) async => pr1);

      final result = await gitHubService.getMergedPullRequests(
        owner: 'owner',
        repo: 'repo',
        startDate: startDate,
        endDate: endDate,
      );

      expect(result, hasLength(1));
      expect(result.first.number, 123);
      verify(() => mockSearchService.issues(query)).called(1);
      verify(() => mockPullRequestsService.get(slug, 123)).called(1);
    });

    test('getPullRequestDiff returns the diff', () async {
      final mockHttpClient = MockHttpClient();
      when(() => mockGitHub.client).thenReturn(mockHttpClient);
      when(
        () => mockHttpClient.get(
          Uri.parse('https://api.github.com/repos/owner/repo/pulls/1'),
          headers: {'Accept': 'application/vnd.github.v3.diff'},
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
