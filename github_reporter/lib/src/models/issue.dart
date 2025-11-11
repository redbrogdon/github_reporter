import 'user.dart';

class Issue {
  final int number;
  final String title;
  final String htmlUrl;
  final User user;
  final DateTime? closedAt;
  final Reactions reactions;

  Issue({
    required this.number,
    required this.title,
    required this.htmlUrl,
    required this.user,
    this.closedAt,
    required this.reactions,
  });

  factory Issue.fromJson(Map<String, dynamic> json) {
    return Issue(
      number: json['number'],
      title: json['title'],
      htmlUrl: json['html_url'],
      user: User.fromJson(json['user']),
      closedAt: json['closed_at'] != null
          ? DateTime.parse(json['closed_at'])
          : null,
      reactions: Reactions.fromJson(json['reactions']),
    );
  }
}

class Reactions {
  final int totalCount;
  final int plusOne;
  final int minusOne;
  final int laugh;
  final int hooray;
  final int confused;
  final int heart;
  final int rocket;
  final int eyes;

  Reactions({
    required this.totalCount,
    required this.plusOne,
    required this.minusOne,
    required this.laugh,
    required this.hooray,
    required this.confused,
    required this.heart,
    required this.rocket,
    required this.eyes,
  });

  factory Reactions.fromJson(Map<String, dynamic> json) {
    return Reactions(
      totalCount: json['total_count'],
      plusOne: json['+1'],
      minusOne: json['-1'],
      laugh: json['laugh'],
      hooray: json['hooray'],
      confused: json['confused'],
      heart: json['heart'],
      rocket: json['rocket'],
      eyes: json['eyes'],
    );
  }
}
