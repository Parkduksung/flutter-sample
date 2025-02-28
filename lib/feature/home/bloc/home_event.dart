part of 'home_bloc.dart';

@immutable
sealed class HomeEvent extends Equatable {
  const HomeEvent();
}

final class TextChanged extends HomeEvent {
  const TextChanged({required this.text});

  final String text;

  @override
  String toString() => 'TextChanged { text : $text}';

  @override
  List<Object?> get props => [text];
}
