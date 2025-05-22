import 'package:flutter/material.dart';
import 'package:flutter_application_1/Personajes.dart';

class SuccessOnePiece extends StatefulWidget {
  final List<Personaje> personajes;

  const SuccessOnePiece({Key? key, required this.personajes}) : super(key: key);

  @override
  State<SuccessOnePiece> createState() => _SuccessOnePieceState();
}

class _SuccessOnePieceState extends State<SuccessOnePiece>
    with SingleTickerProviderStateMixin {
  double _opacity = 0.4;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _controller.repeat(reverse: true);
    _controller.addListener(() {
      setState(() {
        _opacity = 0.4 + (_controller.value * 0.3);
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen animada de fondo
          SizedBox.expand(
            child: AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 1),
              child: Image.asset(
                'assets/imagenes/sunny.png', // O la imagen que quieras
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Contenido de la tripulación
          GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: widget.personajes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) {
              final p = widget.personajes[index];
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
                    Text(
                      p.nombre,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(p.rol),
                    Text(
                      p.recompensa,
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
