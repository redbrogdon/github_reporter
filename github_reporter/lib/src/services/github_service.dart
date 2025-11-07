import 'package:github/github.dart';
import 'package:logging/logging.dart';

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
  final GitHub _github;
  final _log = Logger('GitHubService');

  /// Creates a new instance of [GitHubService].
  GitHubService(this._github, {bool verbose = false});

  /// Creates a new instance of [GitHubService] using a GitHub token.
  factory GitHubService.withToken(String token) {
    return GitHubService(GitHub(auth: Authentication.withToken(token)));
  }

  /// Gets a list of merged pull requests for a given repository and date range.
  Future<List<PullRequest>> getMergedPullRequests({
    required String owner,
    required String repo,
    required DateTime startDate,
    required DateTime endDate,
    List<String> excludeAuthors = const [],
  }) async {
    try {
      var query =
          'repo:$owner/$repo is:pr is:merged '
          'merged:${_formatDate(startDate)}..${_formatDate(endDate)}';

      for (final author in excludeAuthors) {
        query += ' -author:$author';
      }

      _log.info('Making GitHub API request: search issues with query "$query"');

      final searchResult = await _github.search.issues(query).toList();
      final pullRequests = <PullRequest>[];

      for (final issue in searchResult) {
        _log.info(
          'Making GitHub API request: get pull request #${issue.number}',
        );

        final pr = await _github.pullRequests.get(
          RepositorySlug(owner, repo),
          issue.number,
        );

        pullRequests.add(pr);
      }

      return pullRequests;
    } on RateLimitHit {
      throw RateLimitException('GitHub API rate limit exceeded.');
    }
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
    try {
      _log.info(
        'Making GitHub API request: get diff for PR #$number in $owner/$repo',
      );
      final httpClient = _github.client;
      final response = await httpClient.get(
        Uri.parse('https://api.github.com/repos/$owner/$repo/pulls/$number'),
        headers: {'Accept': 'application/vnd.github.v3.diff'},
      );
      return response.body;
    } on RateLimitHit {
      throw RateLimitException('GitHub API rate limit exceeded.');
    }
  }
}
