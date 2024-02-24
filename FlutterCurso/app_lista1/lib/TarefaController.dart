import 'package:app_lista1/TarefaModel.dart';
import 'package:flutter/material.dart';

class ListaTarefasController extends ChangeNotifier {
  List<Tarefa> _tarefas = [];
  String _resposta = '';
  String _MsgAddErro = 'O campo não pode estar vazio, ou quantidade inválida.';
  String _MsgAddOk = 'Item adicionado com sucesso';
  String _MsgMarcConfirmar = 'Confirmado com sucesso';
  String _MsgExcluido = 'Excluído com sucesso';
  String _espaco =
      '                              '; //eu sei que é um péssima prática
  //mas ainda não sei outro jeito kkkk
  int _contadorItem = 0;

  List<Tarefa> get tarefas =>
      _tarefas; //buscar as tarefas dentro da lista _tarefas
  //lista interna do dart, != do java

  //métodos CRUD

  void adicionarTarefa(String descricao) {
    String quantidade = _contadorItem.toString();

    try {
      if (descricao.trim().isEmpty || _contadorItem < 0) {
        //não adiciona os espaços
        _resposta = _MsgAddErro;
        print(_MsgAddErro);
        notifyListeners();
      } else {
        if (descricao.trim().isNotEmpty && _contadorItem > 0) {
          _tarefas.add(Tarefa(
              descricao.trim() +
                  _espaco +
                  'Quantidade:' +
                  quantidade +
                  _espaco +
                  'Confirme sua compra ->',
              false)); //construtor do tarefasModel
          _contadorItem = 0;
          notifyListeners();
          print(_MsgAddOk);
          _resposta = _MsgAddOk;
        } else {
          print(_MsgAddErro);
          _resposta = _MsgAddErro;
        }
      }
    } catch (error) {
      print('Erro ao adicionar Tarefa $error');
      //on Exception tipo específico
    }
  }

  void marcarComoConcluida(int indice) {
    if (indice >= 0 && indice < _tarefas.length) {
      _tarefas[indice].concluido = true;
      _resposta = _MsgMarcConfirmar;
      notifyListeners();
    }
  }

  void excluirTarefa(int indice) {
    if (indice >= 0 && indice < _tarefas.length) {
      _tarefas.removeAt(indice);
      _resposta = _MsgExcluido;
      notifyListeners();
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

  void RemoverQntItem() {
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

  int totalItens() {
    return _contadorItem;
  }

  String resposta() {
    return _resposta;
  }
}


//19 98434-0203
