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
                          icon: new Icon(Icons.person),
                          labelText: "Nome",
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0))),
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: new Icon(Icons.message),
                      label: Text('Mensagem'))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Formulário Básico',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Your name...",
                          prefixIcon: new Icon(Icons.near_me),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    ElevatedButton(onPressed: (){}, child: Text('Enviar'),)
                  ],
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
