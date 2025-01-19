import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:flutter_sample/base/effect_base.dart';
import 'package:flutter_sample/domain/kakao/entity/document_entity.dart';
import 'package:flutter_sample/domain/kakao/usecase/get_search_books_use_case.dart';
import 'package:flutter_sample/feature/home/home_contract.dart';
import 'package:flutter_sample/feature/home/home_screen.dart';
import 'package:flutter_sample/feature/home/home_viewmodel.dart';
import 'package:flutter_sample/utils/debounce_texteditcontroller.dart';
import 'home_screen_test.mocks.dart';


@GenerateMocks([HomeViewModel, GetSearchBooksUseCase])
void main() {
  late MockHomeViewModel mockViewModel;
  late MockGetSearchBooksUseCase mockUseCase;

  group('HomeScreen tests', () {
    setUp(() {
      mockViewModel = MockHomeViewModel();
      mockUseCase = MockGetSearchBooksUseCase();
      when(mockViewModel.state).thenAnswer((_) => Stream.value(HomeState()));
      when(mockViewModel.effect).thenAnswer((_) => Stream.empty());
      when(mockViewModel.textController).thenReturn(DebouncedTextController(
          onDebounce: (_) {}, duration: const Duration(milliseconds: 1000)));
    });

    Widget createHomeScreen() {
      return MaterialApp(
        home: MultiProvider(
          providers: [
            Provider<GetSearchBooksUseCase>(
              create: (_) => mockUseCase,
            ),
          ],
          child: HomeScreen(
            viewModel: mockViewModel,
          ),
        ),
      );
    }

    testWidgets('init screen test', (tester) async {
      // when
      await tester.pumpWidget(createHomeScreen());
      await tester.pumpAndSettle();

      // then
      expect(find.byType(TextField), findsOneWidget);
      expect(find.text('검색 결과가 없습니다'), findsOneWidget);
      expect(find.text('검색어를 입력하세요'), findsOneWidget);
    });

    testWidgets('should change controller text when text entered', (tester) async {
      String mockInputString = 'test';

      when(mockViewModel.textController).thenReturn(DebouncedTextController(
          onDebounce: (_) {}, duration: const Duration(milliseconds: 1000)));

      await tester.pumpWidget(createHomeScreen());
      await tester.enterText(find.byType(TextField), mockInputString);

      await tester.pumpAndSettle(const Duration(milliseconds: 1000));
      expect(mockViewModel.textController.text, equals(mockInputString));
    });


    testWidgets('should display search results test', (tester) async {
      final documents = [
        DocumentEntity(
            title: '테스트북',
            contents: 'contents',
            url: 'url',
            isbn: 'isbn',
            datetime: 'datetime',
            authors: ['author'],
            publisher: 'publisher',
            translators: ['translator'],
            price: 1000,
            salePrice: 900,
            thumbnail: 'thumbnail',
            status: 'status')
      ];

      when(mockViewModel.state)
          .thenAnswer((_) => Stream.value(HomeState(searchList: documents)));

      // when
      await tester.pumpWidget(createHomeScreen());
      // 모든 애니메이션이 완료될 때까지 기다림
      await tester.pumpAndSettle();

      expect(find.text('테스트북'), findsOneWidget);
      expect(find.text('검색 결과가 없습니다'), findsNothing);
    });

    testWidgets('should show error message test', (tester) async {
      // given
      when(mockViewModel.effect).thenAnswer(
              (_) => Stream.value(ShowToast('Error'))
      );

      // when
      await tester.pumpWidget(createHomeScreen());
      await tester.pumpAndSettle();

      // then
      expect(find.text('Error'), findsOneWidget);
    });

    tearDown((){
      mockViewModel.dispose();
    });

  });
}
