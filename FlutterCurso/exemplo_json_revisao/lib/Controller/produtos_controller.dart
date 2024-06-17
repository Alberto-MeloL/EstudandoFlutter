import 'dart:convert';
import 'package:flutter/services.dart';
import '../Model/produtos_model.dart';

class ProdutosController {
  List<Produto> produtos = [];

  Future<List<Produto>> loadProdutos() async {
    final data = await rootBundle.loadString('assets/produtos.json');
    final jsonList = json.decode(data) as List<dynamic>;
    produtos.clear();
    produtos.addAll(jsonList.map((e) => Produto.fromJson(e)));
    return produtos;
  }

  void addProduto(Produto produto) {
    produtos.add(produto);
  }

  void deleteProduto(int index) {
    produtos.removeAt(index);
  }
}
