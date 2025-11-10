class Story {
  final int id;
  final String? by;
  final int? descendants;
  final List<int>? kids;
  final int? score;
  final int? time;
  final String? title;
  final String? type;
  final String? url;

  Story({
    required this.id,
    this.by,
    this.descendants,
    this.kids,
    this.score,
    this.time,
    this.title,
    this.type,
    this.url,
  });

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      id: json['id'],
      by: json['by'],
      descendants: json['descendants'],
      kids: json['kids'] != null ? List<int>.from(json['kids']) : null,
      score: json['score'],
      time: json['time'],
      title: json['title'],
      type: json['type'],
      url: json['url'],
    );
  }
}
