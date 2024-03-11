import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                '../lib/assets/flutter.png', // Ajuste o caminho conforme necessário
                fit: BoxFit.contain,
                height: 50,
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
                child: ListTile(
                  leading: Icon(Icons.info),
                  title: Text('Sobre Layouts...'),
                  subtitle: Text('Ver mais...'),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // Adicione mais Cards aqui conforme necessário
              Card(
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Configurações'),
                  subtitle: Text('Ajuste suas preferências'),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // Exemplo de uso de Row dentro de um Card
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.warning),
                      SizedBox(width: 10), // Espaçamento entre ícone e texto
                      Text('Atenção'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Title(color: Colors.red, child: Text('Idade')),
                  Icon(Icons.home),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Column(
                children: [
                  TextField(
                      decoration: InputDecoration(
                          icon: new Icon(Icons.search),
                          labelText: "Buscar...",
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
