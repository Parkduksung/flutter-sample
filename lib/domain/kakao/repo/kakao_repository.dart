
import 'package:flutter_sample/domain/kakao/entity/document_entity.dart';

abstract class KakaoRepository {
  Future<List<DocumentEntity>> getDocuments(String keyword);
}
