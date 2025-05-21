import 'package:flutter/material.dart';
import 'package:flutter_application_1/Personajes.dart';

class SuccessOnePiece extends StatelessWidget {
  final List<Personaje> personajes;

  const SuccessOnePiece({Key? key, required this.personajes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Tripulación de Luffy')),
        body: GridView.builder(
          padding: EdgeInsets.all(10),
          itemCount: personajes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final p = personajes[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    p.imagen,
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 10),
                  Text(p.nombre, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(p.rol),
                  Text(
                    p.recompensa.toString(), // 👈 Asegúrate que sea string
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
