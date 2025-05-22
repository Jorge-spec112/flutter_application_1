import 'package:equatable/equatable.dart' show Equatable;

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

final class HomeSearchPressed extends HomeEvent {}

final class HomeRequested extends HomeEvent {}
