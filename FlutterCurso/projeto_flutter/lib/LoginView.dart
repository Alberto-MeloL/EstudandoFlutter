import 'package:flutter/material.dart';
import 'package:projeto_flutter/HomePage.dart';
import 'controller.dart'; // Certifique-se de importar o controller corretamente

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Criando os controllers para os campos de texto
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final Controller _controller = Controller();

  @override
  void dispose() {
    // Limpeza dos controllers
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _fazerLogin() async {
    final email = _emailController.text;
    final senha = _senhaController.text;
    final bool resultado = (await _controller.fazerLogin(email, senha)) as bool;
    if (resultado) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    }else{
ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email ou senha incorretos"),));
    }

    // Mostrar o resultado para o usuário
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Email ou Senha incorretos")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página de Login"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  labelText: 'Seu E-mail',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _senhaController,
              decoration: InputDecoration(
                  labelText: 'Sua Senha',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              obscureText: true, // Isso torna o texto do campo de senha oculto
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _fazerLogin,

                child: const Text(
                  "Entrar",
                  style: TextStyle(color: Colors.amber),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black))
          ],
        ),
      ),
    );
  }
}
