import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(SorteioApp());
}

class SorteioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sorteio(),
    );
  }
}

class Sorteio extends StatefulWidget {
  @override
  _SorteioState createState() => _SorteioState();
}

class _SorteioState extends State<Sorteio> {
  TextEditingController _controllerNumero1 = TextEditingController();
  String _resultado = '';
  String errou = 'Errou fih';
  String acertou = 'Boa fih';
  int tentativas = 0;

  void _calcular(String operacao) {
    double numero1 = double.tryParse(_controllerNumero1.text) ?? 0.0;
    String? resultado; //permite valores null
    int valorSorteado = Random().nextInt(10);

    setState(() {
      if (operacao == "Jogar") {
        resultado = numero1 == valorSorteado ? acertou : errou;
      }
      
        tentativas++;
      
      if (resultado == acertou) {
        _resultado = 'Boa, você acertou após tentar $tentativas vezes';
      }else{
        _resultado = 'O Resultado é $resultado';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sorteio Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controllerNumero1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Tente a sorte querido:'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () => _calcular('Jogar'),
              child: Text('Jogar'),
            ),
            SizedBox(height: 16.0),
            Text(_resultado,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
