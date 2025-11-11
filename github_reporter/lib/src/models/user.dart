class User {
  final String login;
  final String htmlUrl;

  User({required this.login, required this.htmlUrl});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(login: json['login'], htmlUrl: json['html_url']);
  }
}
