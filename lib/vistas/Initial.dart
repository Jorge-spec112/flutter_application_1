import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/vistas/bloc/home_bloc.dart';
import 'package:flutter_application_1/vistas/bloc/home_event.dart';

class InitialView extends StatefulWidget {
  @override
  _InitialViewState createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _verTripulacion() {
    context.read<HomeBloc>().add(HomeSearchPressed());
    Navigator.pushNamed(context, '/tripulacion');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/imagenes/sunny.png', fit: BoxFit.cover),
            Container(color: Colors.black.withOpacity(0.3)),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '¡Bienvenido a la Tripulación del\nSombrero de Paja!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      shadows: [Shadow(blurRadius: 4, color: Colors.black)],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                    ),
                    onPressed: _verTripulacion,
                    child: Text('Ver Tripulación'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
