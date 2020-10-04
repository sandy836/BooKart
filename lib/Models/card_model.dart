class CardModel {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  CardModel({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      albumId: json["albumId"],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
