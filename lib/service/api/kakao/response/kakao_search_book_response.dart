import 'package:freezed_annotation/freezed_annotation.dart';

part 'kakao_search_book_response.freezed.dart';

part 'kakao_search_book_response.g.dart';

@freezed
class KakaoSearchBookResponse with _$KakaoSearchBookResponse {
  factory KakaoSearchBookResponse({
    required Meta meta,
    required List<Document> documents,
  }) = _KakaoSearchBookResponse;

  factory KakaoSearchBookResponse.fromJson(Map<String, dynamic> json) =>
      _$KakaoSearchBookResponseFromJson(json);
}

@freezed
class Meta with _$Meta {
  factory Meta({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'pageable_count') required int pageableCount,
    @JsonKey(name: 'is_end') required bool isEnd,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Document with _$Document {
  factory Document({
    required String title,
    required String contents,
    required String url,
    required String isbn,
    required String datetime,
    required List<String> authors,
    required String publisher,
    required List<String> translators,
    required int price,
    @JsonKey(name: 'sale_price') required int salePrice,
    required String thumbnail,
    required String status,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}
