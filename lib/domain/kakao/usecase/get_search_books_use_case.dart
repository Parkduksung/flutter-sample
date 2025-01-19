
import 'package:flutter_sample/domain/kakao/entity/document_entity.dart';
import 'package:flutter_sample/domain/kakao/repo/kakao_repository.dart';
import 'package:flutter_sample/ext/ext_future.dart';
import 'package:flutter_sample/utils/result.dart';

class GetSearchBooksUseCase {
  GetSearchBooksUseCase({required KakaoRepository kakaoRepository})
      : _kakaoRepository = kakaoRepository;
  final KakaoRepository _kakaoRepository;

  Stream<Result<List<DocumentEntity>>> call(String keyword) =>
      Stream.fromFuture(_kakaoRepository.getDocuments(keyword).asResult());
}
