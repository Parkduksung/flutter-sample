import 'package:flutter_sample/domain/kakao/entity/document_entity.dart';
import 'package:flutter_sample/service/api/kakao/response/kakao_search_book_response.dart';

class KakaoMapper {
  static DocumentEntity toEntity(Document document) => DocumentEntity(
      title: document.title,
      contents: document.contents,
      url: document.url,
      isbn: document.isbn,
      datetime: document.datetime,
      authors: document.authors,
      publisher: document.publisher,
      translators: document.translators,
      price: document.price,
      salePrice: document.salePrice,
      thumbnail: document.thumbnail,
      status: document.status);
}
