import 'package:flutter/material.dart';
import 'package:projeto_flutter/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Persistência de Dados",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),home: HomePage(),
    );
  }
}