import 'package:flutter/material.dart';
import 'package:flutter_application_1/vistas/failure.dart';
import 'package:flutter_application_1/vistas/loading.dart';
import 'package:flutter_application_1/vistas/succes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Failure();
  }
}
