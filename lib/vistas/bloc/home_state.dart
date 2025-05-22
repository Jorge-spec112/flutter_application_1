import 'package:flutter_application_1/Personajes.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadInProgress extends HomeState {}

class HomeLoadSuccess extends HomeState {
  final List<Personaje> personajes;

  HomeLoadSuccess({required this.personajes});
}

class HomeLoadFailure extends HomeState {}
