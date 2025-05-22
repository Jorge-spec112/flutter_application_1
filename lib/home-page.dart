import 'package:flutter/material.dart';
import 'package:flutter_application_1/Personajes.dart';

class TripulacionView extends StatelessWidget {
  const TripulacionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tripulación de Luffy',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown, // color estilo barco
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columnas
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemCount: tripulacionLuffy.length,
        itemBuilder: (context, index) {
          final personaje = tripulacionLuffy[index];

          // Si es Sunny, usa el widget animado
          final bool esSunny = personaje.nombre.toLowerCase().contains('sunny');

          return Card(
            color: Colors.pink[50],
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: esSunny
                        ? AnimatedImageZoom(imagePath: personaje.imagen)
                        : Image.asset(
                            personaje.imagen,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  personaje.nombre,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(personaje.rol, textAlign: TextAlign.center),
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    personaje.recompensa,
                    style: const TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
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

class AnimatedImageZoom extends StatefulWidget {
  final String imagePath;

  const AnimatedImageZoom({required this.imagePath, Key? key})
    : super(key: key);

  @override
  State<AnimatedImageZoom> createState() => _AnimatedImageZoomState();
}

class _AnimatedImageZoomState extends State<AnimatedImageZoom>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animationScale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _animationScale = Tween<double>(
      begin: 1.0,
      end: 1.08,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animationScale,
      child: Image.asset(
        widget.imagePath,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}
