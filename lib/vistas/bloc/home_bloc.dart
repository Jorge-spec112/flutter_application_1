import 'package:flutter_application_1/Personajes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/vistas/bloc/home_event.dart';
import 'package:flutter_application_1/vistas/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeLoadRequested>((event, emit) async {
      emit(HomeLoadInProgress());
      await Future.delayed(Duration(seconds: 1)); // Simula carga
      emit(HomeLoadSuccess(personajes: tripulacionLuffy));
    });
  }
}
