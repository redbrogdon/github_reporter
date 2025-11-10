class Comment {
  final int id;
  final String? by;
  final List<int>? kids;
  final int? parent;
  final String? text;
  final int? time;
  final String? type;

  Comment({
    required this.id,
    this.by,
    this.kids,
    this.parent,
    this.text,
    this.time,
    this.type,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'],
      by: json['by'],
      kids: json['kids'] != null ? List<int>.from(json['kids']) : null,
      parent: json['parent'],
      text: json['text'],
      time: json['time'],
      type: json['type'],
    );
  }
}
