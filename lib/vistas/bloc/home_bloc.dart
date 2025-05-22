import 'package:flutter_application_1/Personajes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/vistas/bloc/home_event.dart';
import 'package:flutter_application_1/vistas/bloc/home_state.dart';
import 'package:http/http.dart' as http;

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeSearchPressed>((event, emit) async {
      emit(HomeLoadInProgress());
      final url = Uri.parse(
        'https://run.mocky.io/v3/b47863ea-5bb9-4090-9c59-f8904372df82',
      );
      final Response = await http.get(url);
      if (Response.statusCode == 200) {
        emit(HomeLoadSuccess(personajes: []));
      } else {
        emit(HomeLoadFailure());
      }
      await Future.delayed(Duration(seconds: 3)); // Simula carga
      emit(HomeLoadSuccess(personajes: tripulacionLuffy));
    });
  }
}
