class NewsModel {
  int userId;
  int id;
  String title;
  String body;
  NewsModel(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory NewsModel.fromJson(Map json) {
    return NewsModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"]);
  }
}
