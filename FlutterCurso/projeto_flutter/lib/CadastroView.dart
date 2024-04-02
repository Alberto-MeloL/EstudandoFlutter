import 'package:flutter/material.dart';
import 'Controller.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  //instanciando os TextEditingController, para recuperar o que foi digitado em cada input
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  //instanciando o controller
  final Controller _controller = Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Cadastro"),
      ),
       body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: 'Seu nome',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Seu E-mail',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Sua senha',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
                      obscureText: true,//esconde a senha
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () async{

              int id = await _controller.createUsuario(
                _nomeController.text,
                _emailController.text,
                _senhaController.text
                );
            }, child: Text("Cadastrar-me")
            )
          ],
        ),
      ),
    );
  }
  //ctrl + alt
      @override
      void dispose(){

        _nomeController.dispose();
        _emailController.dispose();
        _senhaController.dispose();
        super.dispose();
      }
}