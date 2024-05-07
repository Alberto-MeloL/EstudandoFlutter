import 'dart:io';

import 'package:flutter/material.dart';

//o map ela não tem lista, tem chave valor, uma lista tem index
//dynamic aceita todos os valores, inclusive lista
class Produto {
  final String nome;
  final double preco;
  final String categoria;


  Produto({required this.nome, required this.preco, required this.categoria});


  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      nome: json['nome'],
      preco: json['preco'],
      categoria: json['categoria'],
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'preco': preco,
      'categoria': categoria,
    };
  }
}
