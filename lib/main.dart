import 'package:flutter/material.dart';
import 'package:flutter_application_1/vistas/Initial.dart';
import 'package:flutter_application_1/vistas/failure.dart';
import 'package:flutter_application_1/vistas/loading.dart';
import 'package:flutter_application_1/vistas/succes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/vistas/bloc/home_bloc.dart';
import 'package:flutter_application_1/vistas/bloc/home_state.dart';
import 'package:flutter_application_1/vistas/bloc/home_event.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => HomeBloc(),
      child: MaterialApp(
        title: 'One Piece App',
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadInProgress) {
              return Loading();
            } else if (state is HomeLoadSuccess) {
              return SuccessView(personajes: state.personajes);
            } else if (state is HomeLoadFailure) {
              return Failure();
            }
            return InitialView();
          },
        ),
      ),
    );
  }
}
