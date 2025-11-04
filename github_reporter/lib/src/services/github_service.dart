import 'package:github/github.dart';

/// A service that interacts with the GitHub API.
class GitHubService {
  final GitHub _github;

  /// Creates a new instance of [GitHubService].
  GitHubService(this._github);

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
  }) async {
    final slug = RepositorySlug(owner, repo);
    final pullRequests = await _github.pullRequests
        .list(slug, state: 'closed', sort: 'updated', direction: 'desc')
        .toList();

    return pullRequests
        .where(
          (pr) =>
              pr.mergedAt != null &&
              pr.mergedAt!.isAfter(startDate) &&
              pr.mergedAt!.isBefore(endDate),
        )
        .toList();
  }

  /// Gets the diff for a given pull request.
  Future<String> getPullRequestDiff({
    required String owner,
    required String repo,
    required int number,
  }) async {
    final slug = RepositorySlug(owner, repo);
    final httpClient = _github.client;
    final response = await httpClient.get(
      Uri.parse('https://api.github.com/repos/$owner/$repo/pulls/$number'),
      headers: {
        'Accept': 'application/vnd.github.v3.diff',
      },
    );
    return response.body;
  }
}
