class ArticleModel {
  final String? image;
  final String title;
  final String? description;
  final String? author;
  final String? publishedAt;

  ArticleModel({
    required this.image,
    required this.title,
    required this.description,
    this.author,
    this.publishedAt,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      description: json['description'],
      author: json['author'],
      publishedAt: json['publishedAt'],
    );
  }
}