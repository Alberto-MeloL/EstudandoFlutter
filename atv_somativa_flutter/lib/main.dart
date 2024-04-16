import 'package:atv_somativa_flutter/View/PaginaInicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ATVSomativa",
      theme: ThemeData(backgroundColor: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: const PaginaInicial(),
    );
  }
}
