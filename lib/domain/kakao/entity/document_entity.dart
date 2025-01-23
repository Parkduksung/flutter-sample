
class DocumentEntity {
  final String title;
  final String contents;
  final String url;
  final String isbn;
  final String datetime;
  final List<String> authors;
  final String publisher;
  final List<String> translators;
  final int price;
  final int salePrice;
  final String thumbnail;
  final String status;

  const DocumentEntity({
    required this.title,
    required this.contents,
    required this.url,
    required this.isbn,
    required this.datetime,
    required this.authors,
    required this.publisher,
    required this.translators,
    required this.price,
    required this.salePrice,
    required this.thumbnail,
    required this.status,
  });

  factory DocumentEntity.fromJson(Map<String, dynamic> json) {
    return DocumentEntity(
      title: json['title'] as String,
      contents: json['contents'] as String,
      url: json['url'] as String,
      isbn: json['isbn'] as String,
      datetime: json['datetime'] as String,
      authors: List<String>.from(json['authors']),
      publisher: json['publisher'] as String,
      translators: List<String>.from(json['translators']),
      price: json['price'] as int,
      salePrice: json['salePrice'] as int,
      thumbnail: json['thumbnail'] as String,
      status: json['status'] as String,
    );
  }
}

