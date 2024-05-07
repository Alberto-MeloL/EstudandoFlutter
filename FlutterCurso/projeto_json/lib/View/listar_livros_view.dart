import 'package:flutter/material.dart';
import 'package:projeto_json/Controller/livros_controller.dart';

class ListarLivros extends StatefulWidget {
  const ListarLivros({super.key});

  @override
  State<ListarLivros> createState() => _ListarLivrosState();
}
LivrosController _controller = new LivrosController();
class _ListarLivrosState extends State<ListarLivros> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Listar Livros"),
      ),
      body: Expanded(child: 
      Padding(padding: EdgeInsets.all(10.0)
      ,child: ListView.builder(
        itemCount: _controller.listLivros.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Livro $index"),
          );
        }
      ))
    ),
    );
  }
}


