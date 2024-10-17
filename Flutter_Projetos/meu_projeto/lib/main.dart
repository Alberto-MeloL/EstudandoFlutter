
import 'package:flutter/material.dart';
import 'package:meu_projeto/model/contador_model.dart';
import 'package:provider/provider.dart';
import 'model/contador_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ContadorModel()),
      ],
      child: MaterialApp(
        title: 'Gerenciamento de Estado',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contador = Provider.of<ContadorModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Gerenciamento de Estado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Você apertou o botão tantas vezes:',
            ),
            Text(
              '${contador.valor}',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: contador.decrementar,
            tooltip: 'Decrementar',
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: contador.incrementar,
            tooltip: 'Incrementar',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

