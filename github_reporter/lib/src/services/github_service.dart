import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

import '../models/issue.dart';
import '../models/pull_request.dart';

const _maxTries = 5;
const _baseDelay = 30;

/// An exception that is thrown when the GitHub API rate limit is exceeded.
class RateLimitException implements Exception {
  /// The message to display.
  final String message;

  /// Creates a new instance of [RateLimitException].
  RateLimitException(this.message);

  @override
  String toString() => 'RateLimitException: $message';
}

/// A service that interacts with the GitHub API.
class GitHubService {
  final String _token;
  final _log = Logger('GitHubService');
  final http.Client _client;

  /// Creates a new instance of [GitHubService].
  GitHubService(this._token, {http.Client? client})
    : _client = client ?? http.Client();

  /// Creates a new instance of [GitHubService] using a GitHub token.
  factory GitHubService.withToken(String token) {
    return GitHubService(token);
  }

  Map<String, String> get _headers => {
    'Authorization': 'Bearer $_token',
    'Accept': 'application/vnd.github.v3+json',
  };

  Future<http.Response> _sendRequest(
    Uri uri, {
    Map<String, String>? headers,
  }) async {
    var tries = 0;

    while (tries < _maxTries) {
      final response = await _client.get(uri, headers: headers);

      if (response.statusCode != 403) {
        return response;
      }

      final delay = pow(2, tries).floor() * _baseDelay;
      _log.warning('Rate limit exceeded. Retrying in $delay seconds...');
      await Future.delayed(Duration(seconds: delay));
      tries++;
    }

    throw RateLimitException(
      'Failed to get response from GitHub API after $_maxTries tries.',
    );
  }

  /// Gets a list of merged pull requests for a given repository and date range.
  Future<List<PullRequest>> getMergedPullRequests({
    required String owner,
    required String repo,
    required DateTime startDate,
    required DateTime endDate,
    List<String> excludeAuthors = const [],
  }) async {
    var query =
        'repo:$owner/$repo is:pr is:merged '
        'merged:${_formatDate(startDate)}..${_formatDate(endDate)}';

    for (final author in excludeAuthors) {
      query += ' -author:$author';
    }

    _log.info('Making GitHub API request: search issues with query "$query"');

    final searchUri = Uri.parse(
      'https://api.github.com/search/issues?q=$query',
    );
    final searchResponse = await _sendRequest(searchUri, headers: _headers);

    if (searchResponse.statusCode != 200) {
      throw Exception(
        'Failed to search issues: ${searchResponse.statusCode} ${searchResponse.body}',
      );
    }

    final searchResult = jsonDecode(searchResponse.body);
    final issues = searchResult['items'] as List;

    final pullRequests = <PullRequest>[];

    for (final issue in issues) {
      _log.info(
        'Making GitHub API request: get pull request #${issue['number']}',
      );

      final prUri = Uri.parse(
        'https://api.github.com/repos/$owner/$repo/pulls/${issue['number']}',
      );
      final prResponse = await _sendRequest(prUri, headers: _headers);

      if (prResponse.statusCode != 200) {
        throw Exception(
          'Failed to get pull request: ${prResponse.statusCode} ${prResponse.body}',
        );
      }

      pullRequests.add(PullRequest.fromJson(jsonDecode(prResponse.body)));
    }

    return pullRequests;
  }

  String _formatDate(DateTime date) {
    return date.toIso8601String().substring(0, 10);
  }

  /// Gets the diff for a given pull request.
  Future<String> getPullRequestDiff({
    required String owner,
    required String repo,
    required int number,
  }) async {
    _log.info(
      'Making GitHub API request: get diff for PR #$number in $owner/$repo',
    );
    final uri = Uri.parse(
      'https://api.github.com/repos/$owner/$repo/pulls/$number',
    );
    final response = await _sendRequest(
      uri,
      headers: {..._headers, 'Accept': 'application/vnd.github.v3.diff'},
    );

    if (response.statusCode == 200) {
      return response.body;
    }

    if (response.statusCode == 406) {
      return 'The diff was too large to be retrieved. Many files were changed.';
    }

    throw Exception(
      'Failed to get pull request diff: ${response.statusCode} ${response.body}',
    );
  }

  /// Gets a list of closed issues for a given repository and date range.
  Future<List<Issue>> getClosedIssues({
    required String owner,
    required String repo,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final query =
        'repo:$owner/$repo is:issue is:closed '
        'closed:${_formatDate(startDate)}..${_formatDate(endDate)}';

    _log.info('Making GitHub API request: search issues with query "$query"');

    final searchUri = Uri.parse(
      'https://api.github.com/search/issues?q=$query',
    );
    final searchResponse = await _sendRequest(searchUri, headers: _headers);

    if (searchResponse.statusCode != 200) {
      throw Exception(
        'Failed to search issues: ${searchResponse.statusCode} ${searchResponse.body}',
      );
    }

    final searchResult = jsonDecode(searchResponse.body);
    final issues = searchResult['items'] as List;

    return issues.map((issue) => Issue.fromJson(issue)).toList();
  }
}
