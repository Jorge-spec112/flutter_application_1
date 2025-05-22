import 'package:flutter/material.dart';
import 'package:flutter_application_1/Personajes.dart';

class SuccessView extends StatelessWidget {
  final List<Personaje> personajes;

  const SuccessView({required this.personajes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tripulación de Luffy"),
        backgroundColor: Colors.red.shade700,
      ),
      body: ListView.builder(
        itemCount: personajes.length,
        itemBuilder: (context, index) {
          final personaje = personajes[index];
          return Card(
            color: Colors.blue.shade50,
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(personaje.imagen, width: 50),
              title: Text(personaje.nombre),
              subtitle: Text("${personaje.rol} - ${personaje.recompensa}"),
            ),
          );
        },
      ),
    );
  }
}
