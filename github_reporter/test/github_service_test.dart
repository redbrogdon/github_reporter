import 'dart:convert';

import 'package:github_reporter/src/services/github_service.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group('GitHubService', () {
    late GitHubService gitHubService;
    late MockClient mockHttpClient;

    setUp(() {
      mockHttpClient = MockClient((request) async {
        if (request.url.path == '/search/issues') {
          return http.Response(
            jsonEncode({
              'items': [
                {'number': 123},
              ],
            }),
            200,
          );
        }
        if (request.url.path == '/repos/owner/repo/pulls/123') {
          return http.Response(
            jsonEncode({
              'number': 123,
              'title': 'Test PR',
              'html_url': 'https://github.com/owner/repo/pull/123',
              'user': {
                'login': 'testuser',
                'html_url': 'https://github.com/testuser',
              },
              'merged_at': '2025-01-01T12:00:00Z',
              'comments': 2,
              'body': 'This is a test PR body.',
            }),
            200,
          );
        }
        if (request.url.path == '/repos/owner/repo/pulls/1') {
          return http.Response('Test diff', 200);
        }
        return http.Response('Not Found', 404);
      });
      gitHubService = GitHubService('test_token', client: mockHttpClient);
    });

    test('getMergedPullRequests uses search and gets PRs', () async {
      final startDate = DateTime.parse('2025-01-01');
      final endDate = DateTime.parse('2025-01-31');

      final result = await gitHubService.getMergedPullRequests(
        owner: 'owner',
        repo: 'repo',
        startDate: startDate,
        endDate: endDate,
      );

      expect(result, hasLength(1));
      expect(result.first.number, 123);
    });

    test('getPullRequestDiff returns the diff', () async {
      final result = await gitHubService.getPullRequestDiff(
        owner: 'owner',
        repo: 'repo',
        number: 1,
      );

      expect(result, 'Test diff');
      expect(result, 'Test diff');
    });
  }, timeout: Timeout(Duration(seconds: 180)));
}
