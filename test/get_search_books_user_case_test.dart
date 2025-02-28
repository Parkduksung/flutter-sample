import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_sample/domain/kakao/entity/document_entity.dart';
import 'package:flutter_sample/domain/kakao/repo/kakao_repository.dart';
import 'package:flutter_sample/domain/kakao/usecase/get_search_books_use_case.dart';
import 'package:flutter_sample/utils/result.dart';

import 'get_search_books_user_case_test.mocks.dart';

@GenerateMocks([KakaoRepository])
void main() {
  late GetSearchBooksUseCase getSearchBooksUseCase;
  late MockKakaoRepository mockKakaoRepository;

  setUp(() {
    mockKakaoRepository = MockKakaoRepository();
    getSearchBooksUseCase =
        GetSearchBooksUseCase(kakaoRepository: mockKakaoRepository);
  });

  group('callTest', () {
    test('callSuccessTest', () async {
      //given
      final mockResponse = [
        DocumentEntity(
            title: '테스트북',
            contents: 'contents',
            url: 'url',
            isbn: 'isbn',
            datetime: 'datetime',
            authors: ['authors'],
            publisher: 'publisher',
            translators: ['translators'],
            price: 0,
            salePrice: 0,
            thumbnail: 'thumbnail',
            status: 'status')
      ];
      when(mockKakaoRepository.getDocuments('테스트'))
          .thenAnswer((_) async => mockResponse);

      // when (스트림의 맨 첫번째 값)
      final result = await getSearchBooksUseCase('테스트');

      expect(result, isA<Ok<List<DocumentEntity>>>());
      expect((result as Ok).value, mockResponse);

    });
    test('callFailureTest', () async {
      // given

      when(mockKakaoRepository.getDocuments('테스트')).thenAnswer((_) => Future.error('error'));
      
      // when
      final result = await getSearchBooksUseCase('테스트');

      // then
      expect(result, isA<Error<List<DocumentEntity>>>());
      expect((result as Error<List<DocumentEntity>>).error, isA<Exception>());
      expect((result).error.toString(), Exception('error').toString());
    });
  });
}
