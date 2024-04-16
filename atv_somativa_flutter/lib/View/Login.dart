import 'package:atv_somativa_flutter/Controller/BancoDeDados.dart';
import 'package:atv_somativa_flutter/View/PaginaInicial.dart';
import 'package:atv_somativa_flutter/model/Usuario.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Faça seu login'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                  onPressed: () {
                    _login();
                  },
                  child: const Text('Entrar'))
            ],
          ),
        ),
      ),
    );
  }

  void _login() async {
    String email = _emailController.text;
    String senha = _senhaController.text;

    setState(() {
      _loading = true;
    });

    CRUD crud = CRUD();

    try {
      Usuario usuario = (await crud.getUsuario(email, senha)) as Usuario;
      if (usuario !=email) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PaginaInicial()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Email ou senha incorretos'),
        ));
      }
    } catch (error) {
      print(error);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Erro durante o login. Tente novamente mais tarde.'),
      ));
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }
}
