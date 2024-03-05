import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// Obtém informações sobre o ambiente de exibição
    MediaQueryData mediaQueryData = MediaQuery.of(context);

// Determina a largura da tela
    double screenWidth = mediaQueryData.size.width;

// Calcula o tamanho do texto com base na largura da tela
    double textSize = screenWidth * 0.05;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '../lib/assets/flutter.png',
              fit: BoxFit.contain,
              height: 50,
            )
          ],
        )),
        body: Container(
          child: Card(
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text('Sobre Layouts...'),
              subtitle: Text('Ver mais...'),
              
            ),
          ),
        ),
      ),
    );
  }
}
