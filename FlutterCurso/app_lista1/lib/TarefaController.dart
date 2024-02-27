import 'package:app_lista1/TarefaModel.dart';
import 'package:flutter/material.dart';

class ListaTarefasController extends ChangeNotifier {
  List<Tarefa> _tarefas = [];
  String _resposta = '';
  String _MsgAddErro = 'O campo não pode estar vazio, ou quantidade inválida.';
  String _MsgAddOk = 'Item adicionado com sucesso';
  String _MsgMarcConfirmar = 'Confirmado com sucesso';
  String _MsgExcluido = 'Excluído com sucesso';
  String _ItemExixtente = 'Este item já se encontra lista.';
  String _espaco =
      '                              '; //eu sei que é um péssima prática
  //mas ainda não sei outro jeito kkkk
  int _contadorItem = 0;
  int _precoTotal = 0;

  List<Tarefa> get tarefas =>
      _tarefas; //buscar as tarefas dentro da lista _tarefas
  //lista interna do dart, != do java

  //métodos CRUD

  void adicionarTarefa(String descricao) {
    int indiceTarefaExistente = -1;
    bool tarefaExistente = false;
    String quantidade = _contadorItem.toString();

    for (var i = 0; i < _tarefas.length; i++) {
      if (_tarefas[i].descricao.split(' ')[0] == descricao.trim()) {
        indiceTarefaExistente = i;
        tarefaExistente = true;
        break; //interrompe o fluxo
      }
    }
    // bool itensRepetios = _tarefas.any((tarefa) =>
    //     tarefa.descricao.split('')[0] ==
    //     descricao.trim()); //se for false é porque não há nenhuma repetida

    if (tarefaExistente) {
      var partes =
          _tarefas[indiceTarefaExistente].descricao.split('Quantidade:');
      int quantidadeAtual = int.parse(partes[1].trim().split(' ')[0]);
      int novaQntd = quantidadeAtual + _contadorItem;
      quantidade = novaQntd.toString();
      _tarefas[indiceTarefaExistente].descricao =
          "${partes[0]}Quantidade: $quantidade ${partes.sublist(1).join('espaco')}";
      _resposta = _ItemExixtente;
      _contadorItem = 0;
      print(_ItemExixtente);
      notifyListeners();
    } else {
      try {
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
          //não adiciona os espaços
          _resposta = _MsgAddErro;
          print(_MsgAddErro);
          notifyListeners();
        }
      } catch (error) {
        print('Erro ao adicionar Tarefa $error');
        //on Exception tipo específico
      }
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
      _precoTotal++;
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

  int total(){
    return _precoTotal;
  }

  String resposta() {
    return _resposta;
  }
}
