import 'dart:convert';
import 'package:flutter/services.dart';
import '../Model/produtos_model.dart';

class ProdutosController {
  List<Produto> produtos = [];

  Future<List<Produto>> loadProdutos() async {
    try {
      final data = await rootBundle.loadString('assets/json/produtos.json');
      final jsonMap = json.decode(data) as Map<String, dynamic>;
      final jsonProdutos = jsonMap['produtos'] as List<dynamic>;
      
      produtos.clear();
      produtos.addAll(jsonProdutos.map((e) => Produto.fromJson(e)));
      
      return produtos;  
    } catch (e) {
      print('Erro ao carregar produtos: $e');
      return []; // Retornar uma lista vazia ou outro valor indicativo de erro
    }
  }

 Future<void> adicionarNovoProduto(Produto novoProduto) async {
    try {
      // Carrega o conteúdo atual do arquivo JSON
      String data = await rootBundle.loadString('assets/json/produtos.json');
      final jsonMap = json.decode(data) as Map<String, dynamic>;
      final List<dynamic> jsonProdutos = jsonMap['produtos'] as List<dynamic>;

      // Adiciona o novo produto à lista de produtos
      jsonProdutos.add(novoProduto.toJson());

      // Atualiza o conteúdo do mapa com a lista de produtos atualizada
      jsonMap['produtos'] = jsonProdutos;

      // Converte o mapa atualizado de volta para JSON
      String novoJson = json.encode(jsonMap);

      // Salva o JSON atualizado de volta no arquivo
      await rootBundle.loadString('assets/json/produtos.json');

      // Atualiza a lista de produtos internamente
      produtos.add(novoProduto);
    } catch (e) {
      print('Erro ao adicionar novo produto: $e');
      throw e;
    }
  }

  void addProduto(Produto produto) {
    produtos.add(produto);
  }

  void deleteProduto(int index) {
    produtos.removeAt(index);
  }
}
