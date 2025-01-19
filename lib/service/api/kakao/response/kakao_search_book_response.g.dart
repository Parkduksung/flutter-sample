// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kakao_search_book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KakaoSearchBookResponseImpl _$$KakaoSearchBookResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$KakaoSearchBookResponseImpl(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      documents: (json['documents'] as List<dynamic>)
          .map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$KakaoSearchBookResponseImplToJson(
        _$KakaoSearchBookResponseImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'documents': instance.documents,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      totalCount: (json['total_count'] as num).toInt(),
      pageableCount: (json['pageable_count'] as num).toInt(),
      isEnd: json['is_end'] as bool,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'pageable_count': instance.pageableCount,
      'is_end': instance.isEnd,
    };

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      title: json['title'] as String,
      contents: json['contents'] as String,
      url: json['url'] as String,
      isbn: json['isbn'] as String,
      datetime: json['datetime'] as String,
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      publisher: json['publisher'] as String,
      translators: (json['translators'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: (json['price'] as num).toInt(),
      salePrice: (json['sale_price'] as num).toInt(),
      thumbnail: json['thumbnail'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'contents': instance.contents,
      'url': instance.url,
      'isbn': instance.isbn,
      'datetime': instance.datetime,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'translators': instance.translators,
      'price': instance.price,
      'sale_price': instance.salePrice,
      'thumbnail': instance.thumbnail,
      'status': instance.status,
    };
