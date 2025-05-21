import 'package:flutter/material.dart';
import 'package:flutter_application_1/vistas/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<HomeBloc>().add(HomeLoadRequested());
          },
          child: Text('Buscar Personaje'),
        ),
      ),
    );
  }
}
