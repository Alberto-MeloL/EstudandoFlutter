import 'package:flutter/material.dart';
import '../Model/produtos_model.dart';
import '../Controller/produtos_controller.dart';

class ProdutoInfoPage extends StatelessWidget {
  final Produto info;
  final ProdutosController controller;

  ProdutoInfoPage({
    super.key, 
    required this.info,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto Info'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(info.foto),
            Text(info.nome),
            Text(info.preco.toStringAsFixed(2)),
            Text(info.categoria),
          ],
        ),
      ),
    );
  }
}
