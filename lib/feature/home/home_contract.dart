import 'package:flutter_sample/base/contract_base.dart';
import 'package:flutter_sample/base/effect_base.dart';
import 'package:flutter_sample/domain/kakao/entity/document_entity.dart';

abstract class HomeContract
    implements BaseContract<HomeState, HomeEffect, HomeEvent> {}

class HomeState {
  final List<DocumentEntity> searchList;
  const HomeState({this.searchList = const []});

  HomeState copy({List<DocumentEntity>? searchList}) {
    return HomeState(searchList: searchList ?? this.searchList);
  }
}

sealed class HomeEffect extends BaseEffect {
  const HomeEffect();
}

sealed class HomeEvent {
  const HomeEvent();
}

final class UpdateSearchResult extends HomeEvent {
  const UpdateSearchResult(this.documents);
  final List<DocumentEntity> documents;
}

final class Search extends HomeEvent {
  const Search(this.keyword);

  final String keyword;
}
