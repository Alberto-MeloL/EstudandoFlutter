import 'package:atv_somativa_flutter/Controller/BancoDeDados.dart';
import 'package:atv_somativa_flutter/Model/Usuario.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => __CadastroState();
}

class __CadastroState extends State<Cadastro> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _idadeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  void cadastroUsuario(BuildContext context) async {
    String nome = _nomeController.text;
    String idade = _idadeController.text;
    String email = _emailController.text;
    String senha = _senhaController.text;

    Usuario usuario =
        Usuario(id: null, idade: idade, nome: nome, email: email, senha: senha);

//meu baco de dados
    CRUD crud = CRUD();

    try {
      crud.create(usuario);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Usuário cadastrado com sucesso!')),
      );
      Navigator.pop(context); // Redireciona para a tela de login
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Erro ao cadastrar usuário')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Faça seu cadastro'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _nomeController,
                decoration: InputDecoration(
                    labelText: 'Seu nome',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: _idadeController,
                decoration: InputDecoration(
                    labelText: 'Sua idade',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    labelText: 'Seu E-mail',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: _senhaController,
                decoration: InputDecoration(
          
                    labelText: 'Sua senha',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                obscureText: true,
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                  onPressed: () {
                    cadastroUsuario(context);
                  },
                  child: const Text('Cadastrar-me'))
            ],
          ),
        ),
      ),
    );
  }
}
