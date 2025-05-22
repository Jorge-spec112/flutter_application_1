import 'package:flutter/material.dart';
import 'package:flutter_application_1/vistas/bloc/home_bloc.dart';
import 'package:flutter_application_1/vistas/bloc/home_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialView extends StatelessWidget {
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen en la parte superior
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/imagenes/sunny.png', // Asegúrate de tener esta imagen en assets
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),

            // Botón para ver la tripulación
            ElevatedButton(
              onPressed: () {
                context.read<HomeBloc>().add(HomeRequested());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[600],
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Ver Tripulación',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
