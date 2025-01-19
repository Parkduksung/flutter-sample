import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_sample/base/effect_base.dart';
import 'package:flutter_sample/domain/kakao/entity/document_entity.dart';
import 'package:flutter_sample/domain/kakao/usecase/get_search_books_use_case.dart';
import 'package:flutter_sample/feature/home/home_contract.dart';
import 'package:flutter_sample/feature/home/home_viewmodel.dart';
import 'package:flutter_sample/utils/result.dart';

import 'home_viewmodel_test.mocks.dart';

@GenerateMocks([GetSearchBooksUseCase])
void main() {
  late HomeViewModel homeViewModel;
  late MockGetSearchBooksUseCase mockGetSearchBooksUseCase;

  setUp(() {
    mockGetSearchBooksUseCase = MockGetSearchBooksUseCase();
    homeViewModel =
        HomeViewModel(getSearchBooksUseCase: mockGetSearchBooksUseCase);
  });

  group('stateTest', () {
    test('initStateTest', () {
      expect(homeViewModel.initialState.searchList, isEmpty);
    });
  });

  group('eventTest', () {
    const keyword = '테스트';
    final mockDocuments = [
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
        status: 'status',
      )
    ];
    final mockError = Exception('error');
    test('searchSuccessTest', () async {
      when(mockGetSearchBooksUseCase(keyword))
          .thenAnswer((_) => Stream.value(Result.ok(mockDocuments)));

      homeViewModel.event(Search(keyword));

      await expectLater(
          homeViewModel.state,
          emitsThrough(predicate<HomeState>(
              (state) => state.searchList == mockDocuments)));
    });

    test('searchFailureTest', () async {
      when(mockGetSearchBooksUseCase(keyword))
          .thenAnswer((_) => Stream.value(Result.error(mockError)));

      homeViewModel.event(Search(keyword));

      await expectLater(
          homeViewModel.effect,
          emitsThrough(predicate<CommonEffect>((effect) =>
              effect is ShowToast && effect.message == mockError.toString())));
    });
  });
}
