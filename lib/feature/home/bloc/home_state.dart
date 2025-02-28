part of 'home_bloc.dart';

@immutable
sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

final class SearchEmpty extends HomeState {}

final class SearchSuccess extends HomeState {
  const SearchSuccess(this.items);

  final List<DocumentEntity> items;

  @override
  List<Object?> get props => [items];

  @override
  String toString() => 'SearchSuccess { item : $items}';
}

final class SearchFailure extends HomeState {
  const SearchFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

