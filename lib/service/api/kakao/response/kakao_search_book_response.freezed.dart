// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kakao_search_book_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KakaoSearchBookResponse _$KakaoSearchBookResponseFromJson(
    Map<String, dynamic> json) {
  return _KakaoSearchBookResponse.fromJson(json);
}

/// @nodoc
mixin _$KakaoSearchBookResponse {
  Meta get meta => throw _privateConstructorUsedError;
  List<Document> get documents => throw _privateConstructorUsedError;

  /// Serializes this KakaoSearchBookResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KakaoSearchBookResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KakaoSearchBookResponseCopyWith<KakaoSearchBookResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KakaoSearchBookResponseCopyWith<$Res> {
  factory $KakaoSearchBookResponseCopyWith(KakaoSearchBookResponse value,
          $Res Function(KakaoSearchBookResponse) then) =
      _$KakaoSearchBookResponseCopyWithImpl<$Res, KakaoSearchBookResponse>;
  @useResult
  $Res call({Meta meta, List<Document> documents});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$KakaoSearchBookResponseCopyWithImpl<$Res,
        $Val extends KakaoSearchBookResponse>
    implements $KakaoSearchBookResponseCopyWith<$Res> {
  _$KakaoSearchBookResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KakaoSearchBookResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? documents = null,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ) as $Val);
  }

  /// Create a copy of KakaoSearchBookResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KakaoSearchBookResponseImplCopyWith<$Res>
    implements $KakaoSearchBookResponseCopyWith<$Res> {
  factory _$$KakaoSearchBookResponseImplCopyWith(
          _$KakaoSearchBookResponseImpl value,
          $Res Function(_$KakaoSearchBookResponseImpl) then) =
      __$$KakaoSearchBookResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meta meta, List<Document> documents});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$KakaoSearchBookResponseImplCopyWithImpl<$Res>
    extends _$KakaoSearchBookResponseCopyWithImpl<$Res,
        _$KakaoSearchBookResponseImpl>
    implements _$$KakaoSearchBookResponseImplCopyWith<$Res> {
  __$$KakaoSearchBookResponseImplCopyWithImpl(
      _$KakaoSearchBookResponseImpl _value,
      $Res Function(_$KakaoSearchBookResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of KakaoSearchBookResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? documents = null,
  }) {
    return _then(_$KakaoSearchBookResponseImpl(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KakaoSearchBookResponseImpl implements _KakaoSearchBookResponse {
  _$KakaoSearchBookResponseImpl(
      {required this.meta, required final List<Document> documents})
      : _documents = documents;

  factory _$KakaoSearchBookResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$KakaoSearchBookResponseImplFromJson(json);

  @override
  final Meta meta;
  final List<Document> _documents;
  @override
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'KakaoSearchBookResponse(meta: $meta, documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KakaoSearchBookResponseImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, meta, const DeepCollectionEquality().hash(_documents));

  /// Create a copy of KakaoSearchBookResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KakaoSearchBookResponseImplCopyWith<_$KakaoSearchBookResponseImpl>
      get copyWith => __$$KakaoSearchBookResponseImplCopyWithImpl<
          _$KakaoSearchBookResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KakaoSearchBookResponseImplToJson(
      this,
    );
  }
}

abstract class _KakaoSearchBookResponse implements KakaoSearchBookResponse {
  factory _KakaoSearchBookResponse(
      {required final Meta meta,
      required final List<Document> documents}) = _$KakaoSearchBookResponseImpl;

  factory _KakaoSearchBookResponse.fromJson(Map<String, dynamic> json) =
      _$KakaoSearchBookResponseImpl.fromJson;

  @override
  Meta get meta;
  @override
  List<Document> get documents;

  /// Create a copy of KakaoSearchBookResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KakaoSearchBookResponseImplCopyWith<_$KakaoSearchBookResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'pageable_count')
  int get pageableCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_end')
  bool get isEnd => throw _privateConstructorUsedError;

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'pageable_count') int pageableCount,
      @JsonKey(name: 'is_end') bool isEnd});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? pageableCount = null,
    Object? isEnd = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      pageableCount: null == pageableCount
          ? _value.pageableCount
          : pageableCount // ignore: cast_nullable_to_non_nullable
              as int,
      isEnd: null == isEnd
          ? _value.isEnd
          : isEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'pageable_count') int pageableCount,
      @JsonKey(name: 'is_end') bool isEnd});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? pageableCount = null,
    Object? isEnd = null,
  }) {
    return _then(_$MetaImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      pageableCount: null == pageableCount
          ? _value.pageableCount
          : pageableCount // ignore: cast_nullable_to_non_nullable
              as int,
      isEnd: null == isEnd
          ? _value.isEnd
          : isEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  _$MetaImpl(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'pageable_count') required this.pageableCount,
      @JsonKey(name: 'is_end') required this.isEnd});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'pageable_count')
  final int pageableCount;
  @override
  @JsonKey(name: 'is_end')
  final bool isEnd;

  @override
  String toString() {
    return 'Meta(totalCount: $totalCount, pageableCount: $pageableCount, isEnd: $isEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.pageableCount, pageableCount) ||
                other.pageableCount == pageableCount) &&
            (identical(other.isEnd, isEnd) || other.isEnd == isEnd));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalCount, pageableCount, isEnd);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  factory _Meta(
      {@JsonKey(name: 'total_count') required final int totalCount,
      @JsonKey(name: 'pageable_count') required final int pageableCount,
      @JsonKey(name: 'is_end') required final bool isEnd}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'pageable_count')
  int get pageableCount;
  @override
  @JsonKey(name: 'is_end')
  bool get isEnd;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return _Document.fromJson(json);
}

/// @nodoc
mixin _$Document {
  String get title => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get isbn => throw _privateConstructorUsedError;
  String get datetime => throw _privateConstructorUsedError;
  List<String> get authors => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  List<String> get translators => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_price')
  int get salePrice => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this Document to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentCopyWith<Document> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) =
      _$DocumentCopyWithImpl<$Res, Document>;
  @useResult
  $Res call(
      {String title,
      String contents,
      String url,
      String isbn,
      String datetime,
      List<String> authors,
      String publisher,
      List<String> translators,
      int price,
      @JsonKey(name: 'sale_price') int salePrice,
      String thumbnail,
      String status});
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res, $Val extends Document>
    implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? contents = null,
    Object? url = null,
    Object? isbn = null,
    Object? datetime = null,
    Object? authors = null,
    Object? publisher = null,
    Object? translators = null,
    Object? price = null,
    Object? salePrice = null,
    Object? thumbnail = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isbn: null == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      translators: null == translators
          ? _value.translators
          : translators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentImplCopyWith<$Res>
    implements $DocumentCopyWith<$Res> {
  factory _$$DocumentImplCopyWith(
          _$DocumentImpl value, $Res Function(_$DocumentImpl) then) =
      __$$DocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String contents,
      String url,
      String isbn,
      String datetime,
      List<String> authors,
      String publisher,
      List<String> translators,
      int price,
      @JsonKey(name: 'sale_price') int salePrice,
      String thumbnail,
      String status});
}

/// @nodoc
class __$$DocumentImplCopyWithImpl<$Res>
    extends _$DocumentCopyWithImpl<$Res, _$DocumentImpl>
    implements _$$DocumentImplCopyWith<$Res> {
  __$$DocumentImplCopyWithImpl(
      _$DocumentImpl _value, $Res Function(_$DocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? contents = null,
    Object? url = null,
    Object? isbn = null,
    Object? datetime = null,
    Object? authors = null,
    Object? publisher = null,
    Object? translators = null,
    Object? price = null,
    Object? salePrice = null,
    Object? thumbnail = null,
    Object? status = null,
  }) {
    return _then(_$DocumentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isbn: null == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      translators: null == translators
          ? _value._translators
          : translators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentImpl implements _Document {
  _$DocumentImpl(
      {required this.title,
      required this.contents,
      required this.url,
      required this.isbn,
      required this.datetime,
      required final List<String> authors,
      required this.publisher,
      required final List<String> translators,
      required this.price,
      @JsonKey(name: 'sale_price') required this.salePrice,
      required this.thumbnail,
      required this.status})
      : _authors = authors,
        _translators = translators;

  factory _$DocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentImplFromJson(json);

  @override
  final String title;
  @override
  final String contents;
  @override
  final String url;
  @override
  final String isbn;
  @override
  final String datetime;
  final List<String> _authors;
  @override
  List<String> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  final String publisher;
  final List<String> _translators;
  @override
  List<String> get translators {
    if (_translators is EqualUnmodifiableListView) return _translators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translators);
  }

  @override
  final int price;
  @override
  @JsonKey(name: 'sale_price')
  final int salePrice;
  @override
  final String thumbnail;
  @override
  final String status;

  @override
  String toString() {
    return 'Document(title: $title, contents: $contents, url: $url, isbn: $isbn, datetime: $datetime, authors: $authors, publisher: $publisher, translators: $translators, price: $price, salePrice: $salePrice, thumbnail: $thumbnail, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            const DeepCollectionEquality()
                .equals(other._translators, _translators) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      contents,
      url,
      isbn,
      datetime,
      const DeepCollectionEquality().hash(_authors),
      publisher,
      const DeepCollectionEquality().hash(_translators),
      price,
      salePrice,
      thumbnail,
      status);

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      __$$DocumentImplCopyWithImpl<_$DocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentImplToJson(
      this,
    );
  }
}

abstract class _Document implements Document {
  factory _Document(
      {required final String title,
      required final String contents,
      required final String url,
      required final String isbn,
      required final String datetime,
      required final List<String> authors,
      required final String publisher,
      required final List<String> translators,
      required final int price,
      @JsonKey(name: 'sale_price') required final int salePrice,
      required final String thumbnail,
      required final String status}) = _$DocumentImpl;

  factory _Document.fromJson(Map<String, dynamic> json) =
      _$DocumentImpl.fromJson;

  @override
  String get title;
  @override
  String get contents;
  @override
  String get url;
  @override
  String get isbn;
  @override
  String get datetime;
  @override
  List<String> get authors;
  @override
  String get publisher;
  @override
  List<String> get translators;
  @override
  int get price;
  @override
  @JsonKey(name: 'sale_price')
  int get salePrice;
  @override
  String get thumbnail;
  @override
  String get status;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
