import 'package:flutter/material.dart';
import 'package:flutter_application_1/home-page.dart';
import 'package:flutter_application_1/vistas/succes.dart';
// O la pantalla de tripulación
import 'Personajes.dart'; // Donde está la lista

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Piece App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/tripulacion': (context) =>
            SuccessOnePiece(personajes: tripulacionLuffy),
      },
    );
  }
}
