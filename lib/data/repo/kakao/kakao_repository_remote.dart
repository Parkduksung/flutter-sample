import 'package:flutter_sample/data/mapper/kakao_mapper.dart';
import 'package:flutter_sample/domain/kakao/entity/document_entity.dart';
import 'package:flutter_sample/domain/kakao/repo/kakao_repository.dart';
import 'package:flutter_sample/service/api/kakao/kakao_service.dart';

class KakaoRepositoryRemote implements KakaoRepository {
  KakaoRepositoryRemote({required KakaoService kakaoService})
      : _kakaoService = kakaoService;
  final KakaoService _kakaoService;

  @override
  Future<List<DocumentEntity>> getDocuments(String keyword) =>
      _kakaoService.getDocuments(keyword).then(
          (response) => response.documents.map(KakaoMapper.toEntity).toList());
}
