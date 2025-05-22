import 'package:flutter/material.dart';
import 'package:flutter_application_1/vistas/bloc/home_bloc.dart';
import 'package:flutter_application_1/vistas/bloc/home_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialView extends StatefulWidget {
  const InitialView({Key? key}) : super(key: key);

  @override
  State<InitialView> createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // 👇 Controlador para animación flotante
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: 0,
      end: 20,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose(); // Siempre limpiar el controlador
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        title: Text('One Piece - Mugiwara'),
        backgroundColor: Colors.red[500],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 🌊 Imagen animada del Sunny
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, _animation.value),
                child: child,
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                'assets/imagenes/sunny.png',
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.read<HomeBloc>().add(HomeRequested());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[600],
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Ver Tripulación',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
