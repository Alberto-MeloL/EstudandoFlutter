import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:app_lista1/TarefaController.dart';
import 'package:app_lista1/TarefaModel.dart';

class ListaTarefasScreen extends StatelessWidget {
  // Controlador para o campo de texto de nova tarefa
  final TextEditingController _controller = TextEditingController();
  int contadorItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior do aplicativo
      appBar: AppBar(
        title: Text('Lista de Compras'),
      ),
      // Corpo principal do aplicativo
      body: Column(
        children: [
          // Campo de texto para adicionar nova tarefa
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Novo item',
                // Ícone para adicionar tarefa ao pressionar o botão
                suffixIcon: IconButton(
                  onPressed: () {
                    // Chamando o método adicionarTarefa do Provider para atualizar o estado
                    Provider.of<ListaTarefasController>(context, listen: false)
                        .adicionarTarefa(_controller.text);
                    // Limpar o campo de texto após adicionar a tarefa
                    _controller.clear();
                  },
                  icon: Icon(Icons.shopping_cart),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
              onPressed: () {
                Provider.of<ListaTarefasController>(context, listen: false)
                    .AdiconarQntItem();
              },
              child: Text('+')),
          SizedBox(height: 10.0),
          ElevatedButton(
              onPressed: () {
                Provider.of<ListaTarefasController>(context, listen: false)
                    .RemoverQntItem();
              },
              child: Text('-')),
          // Lista de tarefas usando um Consumer do Provider para atualização automática
          Expanded(
            child: Consumer<ListaTarefasController>(
              builder: (context, model, child) {
                return ListView.builder(
                  itemCount: model.tarefas.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      // Exibição do texto da tarefa
                      title: Text(model.tarefas[index].descricao),
                      // Checkbox para marcar a tarefa como concluída
                      trailing: Checkbox(
                        value: model.tarefas[index].concluido,
                        onChanged: (value) {
                          // Chamando o método marcarComoConcluida do Provider para atualizar o estado
                          model.marcarComoConcluida(index);
                        },
                      ),
                      // Exclui a tarefa ao manter pressionado
                      onLongPress: () {
                        // Chamando o método excluirTarefa do Provider para atualizar o estado
                        model.excluirTarefa(index);
                      },
                    );
                  },
                );
              },
            ),
          ),
          Consumer<ListaTarefasController>(
            builder: (context, model, child){
              return Text(model.resposta(),
              style: TextStyle(
                fontSize: 30,
              ),);
            }
            ),
          Consumer<ListaTarefasController>(//garante que so o Text seja reconstruído
            builder: (context, model, child){
              return Text(model.totalItens().toString(),
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),);
            })
        ],
      ),
    );
  }
}
