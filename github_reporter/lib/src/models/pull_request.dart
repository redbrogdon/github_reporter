import 'user.dart';

class PullRequest {
  final int number;
  final String htmlUrl;
  final String title;
  final User user;
  final DateTime? mergedAt;
  final int comments;
  final String? body;
  final String owner;
  final String repo;

  PullRequest({
    required this.number,
    required this.htmlUrl,
    required this.title,
    required this.user,
    this.mergedAt,
    required this.comments,
    this.body,
    required this.owner,
    required this.repo,
  });

  factory PullRequest.fromJson(
    String owner,
    String repo,
    Map<String, dynamic> json,
  ) {
    return PullRequest(
      number: json['number'],
      htmlUrl: json['html_url'],
      title: json['title'],
      user: User.fromJson(json['user']),
      mergedAt: json['merged_at'] != null
          ? DateTime.parse(json['merged_at'])
          : null,
      comments: json['comments'],
      body: json['body'],
      owner: owner,
      repo: repo,
    );
  }
}
