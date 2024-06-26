import 'package:flutter/material.dart';
import 'package:projeto_flutter/CadastroView.dart';
import 'LoginView.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cadastro()));
              },
              child: Text(
                "Cadastrar-me",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            )
          ],
        ),
      ),
    );
  }
}
