import 'package:app_lista1/TarefaModel.dart';
import 'package:flutter/material.dart';

class ListaTarefasController extends ChangeNotifier {
  List<Tarefa> _tarefas = [];

  List<Tarefa> get tarefas => _tarefas;//buscar as tarefas dentro da lista _tarefas
  //lista interna do dart, != do java

  //métodos CRUD

  void adicionarTarefa(String descricao) {
    _tarefas.add(Tarefa(descricao, false));//construtor do tarefasModel
    notifyListeners();
  }

  void marcarComoConcluida(int indice) {
    if (indice >= 0 && indice < _tarefas.length) {
      _tarefas[indice].concluido = true;
      notifyListeners();
    }
  }

  void excluirTarefa(int indice){
    if (indice >= 0 && indice < _tarefas.length) {
      
    }
  }
}

//Programação de Banco de Dados
//Início 07/02/224
//Término 21/03/2024
//19 98434-0203