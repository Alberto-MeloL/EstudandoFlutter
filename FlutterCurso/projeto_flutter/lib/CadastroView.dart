import 'package:flutter/material.dart';
import 'Controller.dart'; // Certifique-se de que o caminho do import está correto

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  // Utilizando os TextEditingController para recuperar o que foi digitado em cada input
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  // Instanciando o controller
  final Controller _controller = Controller();

  @override
  void dispose() {
    // Limpeza dos controllers ao sair da tela
    _nomeController.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _cadastrarUsuario() async {
    final int id = await _controller.createUsuario(
      _nomeController.text,
      _emailController.text,
      _senhaController.text,
    );

    // Feedback para o usuário
    String mensagem = (id != 0) ? 'Cadastro bem-sucedido!' : 'Erro ao cadastrar.';
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(mensagem)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Cadastro"),
        backgroundColor: Colors.amber,
      ),
       body: Container(
        padding: EdgeInsets.all(16), // Adiciona um padding ao redor da coluna
        child: SingleChildScrollView( // Permite rolar a tela se o teclado cobrir o conteúdo
          child: Column(
            children: [
              TextField(
                controller: _nomeController, // Associando o controller
                decoration: InputDecoration(
                    labelText: 'Seu nome',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _emailController, // Associando o controller
                decoration: InputDecoration(
                    labelText: 'Seu E-mail',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _senhaController, // Associando o controller
                decoration: InputDecoration(
                    labelText: 'Sua senha',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                obscureText: true, // Esconde a senha
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: _cadastrarUsuario,
                child: Text("Cadastrar-me", style: TextStyle(color: Colors.amber)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
