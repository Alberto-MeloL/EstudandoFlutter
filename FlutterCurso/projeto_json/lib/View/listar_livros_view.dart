import 'package:flutter/material.dart';

class ListarLivros extends StatefulWidget {
  const ListarLivros({super.key});

  @override
  State<ListarLivros> createState() => _ListarLivrosState();
}

class _ListarLivrosState extends State<ListarLivros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listar Produtos"),
      ),
      body: Center(
        child: Form(child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  TextFormField(
                decoration: const InputDecoration(
                  labelText: "Titulo do Livro",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Autor do Livro",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Editora do Livro",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Ano do Livro",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "ISBN do Livro",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Valor do Livro",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Quantidade do Livro",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Editora do Livro",
                ),
              ),
],
        )),
      ),
    );
  }
}
