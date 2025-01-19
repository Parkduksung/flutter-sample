import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_sample/data/repo/kakao/kakao_repository_remote.dart';
import 'package:flutter_sample/service/api/kakao/kakao_service.dart';
import 'package:flutter_sample/service/api/kakao/response/kakao_search_book_response.dart';
import 'kakao_repository_test.mocks.dart';

@GenerateMocks([KakaoService])
void main() {
  late KakaoRepositoryRemote kakaoRepositoryRemote;
  late MockKakaoService mockKakaoService;

  setUp(() {
    mockKakaoService = MockKakaoService();
    kakaoRepositoryRemote =
        KakaoRepositoryRemote(kakaoService: mockKakaoService);
  });

  group('getDocumentsTest', () {
    test('getDocumentsSuccessTest', () async {
      //given
      final mockResponse = KakaoSearchBookResponse(
          meta: Meta(isEnd: true, pageableCount: 1, totalCount: 1),
          documents: [
            Document(
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
          ]);

      when(mockKakaoService.getDocuments('테스트'))
          .thenAnswer((_) async => mockResponse);

      //when
      final result = await kakaoRepositoryRemote.getDocuments('테스트');

      //then
      expect(result.first.title, '테스트북');
    });

    test('getDocumentsFailureTest', () async {
      //given
      final mockResponse = Exception('error');

      when(mockKakaoService.getDocuments('테스트')).thenThrow(mockResponse);

      //when, then
      expect(() => kakaoRepositoryRemote.getDocuments('테스트'),
          throwsA(equals(mockResponse)));
    });
  });
}
