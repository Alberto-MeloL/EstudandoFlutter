import 'dart:convert';

import 'package:exemplo_json_revisao/produtos_model.dart';
import 'package:flutter/services.dart';

class Controller{
  //atributos

  List<Produtos> produto = [];

  Future<List<Produtos>> loadProdutos() async{
    //carregando dados
    final data = await rootBundle.loadString('assets/produtos.json');
    //decodifica
    final jsonList = json.decode(data) as List<dynamic>;
    produto.clear();
    produto.addAll(jsonList.map((e) => Produtos.fromJson(e)));
    return produto;
  }
}