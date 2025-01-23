import 'package:flutter/cupertino.dart';
import 'package:flutter_sample/base/effect_base.dart';
import 'package:flutter_sample/base/viewmodel_base.dart';
import 'package:flutter_sample/domain/kakao/entity/document_entity.dart';
import 'package:flutter_sample/domain/kakao/usecase/get_search_books_use_case.dart';
import 'package:flutter_sample/feature/home/home_contract.dart';
import 'package:flutter_sample/utils/result.dart';

class HomeViewModel extends BaseViewModel<HomeState, HomeEffect, HomeEvent> {
  HomeViewModel({required GetSearchBooksUseCase getSearchBooksUseCase})
      : _getSearchBooksUseCase = getSearchBooksUseCase;

  final GetSearchBooksUseCase _getSearchBooksUseCase;

  @override
  HomeState get initialState => HomeState();

  @override
  void event(HomeEvent event) {
    switch (event) {
      case Search():
        _searchBooks(event.keyword);
      case UpdateSearchResult():
        updateState(HomeState(searchList: event.documents));
    }
  }

  void _searchBooks(String keyword) {
    _getSearchBooksUseCase(keyword).listen((result) {
      switch (result) {
        case Ok<List<DocumentEntity>>():
          updateState(HomeState(searchList: result.value));
        case Error<List<DocumentEntity>>():
          debugPrint(result.error.toString());
          sendEffect(ShowToast(result.error.toString()));
      }
    });
  }
}
