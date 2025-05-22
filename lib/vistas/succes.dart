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
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columnas
          childAspectRatio: 3 / 4, // ancho / alto de cada item
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: personajes.length,
        itemBuilder: (context, index) {
          final personaje = personajes[index];
          return Card(
            color: Colors.blue.shade50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(personaje.imagen, width: 90),
                SizedBox(height: 8),
                Text(
                  personaje.nombre,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("${personaje.rol}"),
                Text("${personaje.recompensa}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
