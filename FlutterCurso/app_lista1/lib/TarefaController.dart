import 'package:app_lista1/TarefaModel.dart';
import 'package:flutter/material.dart';

class ListaTarefasController extends ChangeNotifier {
  List<Tarefa> _tarefas = [];
  String _MensagemAddErro = 'O campo não deve estar vázio';
  String _MensagemAddOk = 'Mensagem adicionada com sucesso';
  String _MensagemMarcConcluido = 'Concluido com sucesso';
  String _MsgExcluida = 'Tarefa excluída';
  int _contadorItem = 0;

  List<Tarefa> get tarefas =>
      _tarefas; //buscar as tarefas dentro da lista _tarefas
  //lista interna do dart, != do java

  //métodos CRUD

  void adicionarTarefa(String descricao) {
    try {
      if (descricao.trim().isEmpty) {
        //não adiciona os espaços
        print(_MensagemAddErro);
      } else {
        _tarefas
            .add(Tarefa(descricao.trim(), false)); //construtor do tarefasModel
        notifyListeners();
        print(_MensagemAddOk);
      }
    } catch (error) {
      print('Erro ao adicionar Tarefa $error');
      //on Exception tipo específico
    }
  }

  void marcarComoConcluida(int indice) {
    if (indice >= 0 && indice < _tarefas.length) {
      _tarefas[indice].concluido = true;
      notifyListeners();
    }
  }

  void excluirTarefa(int indice) {
    if (indice >= 0 && indice < _tarefas.length) {
      _tarefas.removeAt(indice);
    }
  }

  void AdiconarQntItem() {
    try {
      _contadorItem++;
      print('Quantidae atual $_contadorItem');
      notifyListeners();
    } catch (error) {
      print('Erro ao adicionar novas quantidades $_contadorItem');
    }
  }

  void RemoverQntItem(){
    try {
      if (_contadorItem > 0) {
        
      _contadorItem--;
      print('Quantidade atual $_contadorItem');
      notifyListeners();
      }
    } catch (error) {
      print('Erro ao remover as quantidades $_contadorItem');
    }
  }
}


//19 98434-0203
