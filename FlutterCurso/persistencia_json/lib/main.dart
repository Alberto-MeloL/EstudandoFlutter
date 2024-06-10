import 'package:flutter/material.dart';
import 'package:persistencia_json/View/PaginaInicial.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo_Json",
      home: HomePage()
    );
  }
}