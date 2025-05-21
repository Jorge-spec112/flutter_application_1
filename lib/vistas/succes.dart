import 'package:flutter/material.dart';
import 'package:flutter_application_1/Personajes.dart';

class SuccessOnePiece extends StatelessWidget {
  final List<Personaje> personajes;

  const SuccessOnePiece({Key? key, required this.personajes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tripulación de Luffy'),
        backgroundColor: Colors.red[1000],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: personajes.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.65, // Más alto para mostrar mejor la imagen
        ),
        itemBuilder: (context, index) {
          final p = personajes[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: Image.asset(
                      p.imagen,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          p.nombre,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(p.rol),
                        Text(
                          p.recompensa,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[700],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
