import 'package:bloc/bloc.dart';

import 'package:http/http.dart' as http;

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeSearchPressed>((event, emit) async {
      emit(HomeLoadInProgress());
      final url = Uri.parse(
        'https://run.mocky.io/v3/ca7cde9d-a883-4932-af16-895c856716a4',
      );
      final response = await http.get(url);

      if (response.statusCode == 200) {
        emit(HomeLoadSuccess());
      } else {
        emit(HomeLoadFailure());
      }
    });
  }
}
