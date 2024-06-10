import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projeto_json/Controller/livros_controller.dart';
import 'package:projeto_json/Model/livros_model.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final TextEditingController _controllerLivros = TextEditingController();
  final TextEditingController _controllerAutor = TextEditingController();
  final TextEditingController _controllerEditora = TextEditingController();
  final TextEditingController _controllerISBN = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();
  final TextEditingController _controllerAno = TextEditingController();
  final TextEditingController _controllerQntdLivros = TextEditingController();
  final TextEditingController _sinopseController = TextEditingController();
  late final String _imagemSelecionada;
  final LivrosController _controller = new LivrosController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listar Produtos"),
      ),
      body: Center(
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _controllerLivros,
              decoration: const InputDecoration(
                labelText: "Titulo do Livro",
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'O Titulo do Livro não pode ser vazio.';
                }
              },
            ),
            TextFormField(
              controller: _controllerAutor,
              decoration: const InputDecoration(
                labelText: "Autor do Livro",
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'O Autor do Livro não pode ser vazio.';
                }
              },
            ),
            _imagemSelecionada != null ? Image.file(_imagemSelecionada! as File,height: 150, width: 150,fit: BoxFit.cover,)
            : SizedBox.shrink(),
            TextFormField(
              controller: _controllerEditora,
              decoration: const InputDecoration(
                labelText: "Editora do Livro",
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'A Editora do Livro não pode ser vazia.';
                }
              },
            ),
            TextFormField(
              controller: _controllerAno,
              decoration: const InputDecoration(
                labelText: "Ano do Livro",
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'O ano do Livro não pode ser vazia.';
                }
              },
            ),
            TextFormField(
              controller: _controllerISBN,
              decoration: const InputDecoration(
                labelText: "ISBN do Livro",
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'A ISBN do Livro não pode ser vazia.';
                }
              },
            ),
            TextFormField(
              controller: _controllerValor,
              decoration: const InputDecoration(
                labelText: "Valor do Livro",
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'O Valor do Livro não pode ser vazio.';
                }
              },
            ),
            TextFormField(
              controller: _controllerQntdLivros,
              decoration: const InputDecoration(
                labelText: "Quantidade do Livro",
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'A Quantidade do Livro não pode ser vazia.';
                }
              },
            ),
            TextFormField(
              controller: _sinopseController,
              decoration: const InputDecoration(
                labelText: "Sinopse do Livro",
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'A Sinopse do Livro não pode ser vazia.';
                }
              },
            ),
             TextFormField(
              controller: _sinopseController,
              decoration: const InputDecoration(
                labelText: "Sinopse do Livro",
              ),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'A Foto do Livro não pode ser vazia.';
                }
              },
            ),
          ],
        )),
      ),
    );
  }
}

//  void cleanController(){
//     _controllerLivros.clear();
//     _controllerAutor.clear();
//     _controllerEditora.clear();
//     _controllerISBN.clear();
//     _controllerValor.clear();
//     _controllerAno.clear();
//     _controllerQntdLivros.clear();
//     _sinopseController.clear();
//     _imagemSelecionada = null;
//   }
  // _CadastrarLivro(){
  //   final livro = Livros(id:  _controller.llistLivros, titulo: _controllerLivros.text, autor: _controllerAutor.text, sinopse: _controllerSinopse.text, categoria: _controllerCategoria.text, capa: _controllerCapa.text, editoria: _controllerEditora.text, isbn: _controllerISBN.text, preco: _controllerValor.text);

  // }

  //  Future<void> _tirarFoto()async{
  //     final picker = ImagePicker();

  //    final image = await ImagePicker.pickImage(source: ImageSource.camera);
  //   if(image!= null){
  //      setState(() {
  //        _controllerFoto.text = image.path;
  //      });
  //  }},

 

