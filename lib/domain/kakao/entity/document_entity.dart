
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
}