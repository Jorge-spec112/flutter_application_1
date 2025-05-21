import 'package:flutter/material.dart';
import 'package:flutter_application_1/Personajes.dart';
import 'package:flutter_application_1/vistas/succes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'One Piece App', home: Inicio());
  }
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tripulación de Luffy')),
      body: Center(
        child: ElevatedButton(
          child: Text('Ver Tripulación'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    SuccessOnePiece(personajes: tripulacionLuffy),
              ),
            );
          },
        ),
      ),
    );
  }
}
