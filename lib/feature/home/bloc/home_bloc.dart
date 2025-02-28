import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sample/domain/kakao/usecase/get_search_books_use_case.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../domain/kakao/entity/document_entity.dart';
import '../../../utils/result.dart';

part 'home_event.dart';

part 'home_state.dart';

const _duration = Duration(milliseconds: 1000);

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.getSearchBooksUseCase}) : super(SearchEmpty()) {
    on<TextChanged>(_onTextChanged, transformer: debounce(_duration));
  }

  final GetSearchBooksUseCase getSearchBooksUseCase;

  Future<void> _onTextChanged(
      TextChanged event, Emitter<HomeState> emit) async {
    if (event.text.isEmpty) return emit(SearchEmpty());

    var result = await getSearchBooksUseCase(event.text);

    switch (result) {
      case Ok<List<DocumentEntity>>():
        if (result.value.isEmpty) {
          emit(SearchEmpty());
        } else {
          emit(SearchSuccess(result.value));
        }
      case Error<List<DocumentEntity>>():
        debugPrint(result.error.toString());
        emit(SearchFailure(result.error.toString()));
    }
  }
}
