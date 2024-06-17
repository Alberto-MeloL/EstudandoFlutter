import 'package:exemplo_json_revisao/View/produtos_view.dart';
import 'package:flutter/material.dart';
import 'Controller/produtos_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Produtos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProdutosPage(),
    );
  }
}
