// import 'dart:ffi';

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
  bool botaoReiniciarVisivel = false; //qual é a diferença de Bool
  int tentativas = 0;
  int valorSorteado = Random().nextInt(100) + 1;//ficando de 0 a 10 com o +1

//método
  void _jogoSorteio(String operacao) {
    double numero1 = double.tryParse(_controllerNumero1.text) ?? 0.0;
    String? resultado; //permite valores null

    setState(() {
      //o que é?

      //verificar se o botão jogar foi clicado, valor vem do parâmetro do método
      if (operacao == "Jogar") {
        //também verifica se acertou ou não
        resultado = numero1 == valorSorteado ? acertou : errou;
      }

      tentativas++; //contador de tentativas

//emite uma mensagem de acordo com o resultado
      if (resultado == acertou) {
        _resultado = 'Boa, você acertou após tentar $tentativas vezes';
        tentativas = 0;
        //valorSorteado = Random().nextInt(10) + 1; //sortear novamente ou o método
        //_reiniciar();//também reinicia, mas tem o botão reiniciar
      } else {
        //verificar se esta longe ou perto
        if (numero1 < valorSorteado) {
          resultado = 'Tente um número maior.';
        } else {
          resultado = 'Tente um número menor.';
        }
        _resultado = 'O Resultado é $resultado'; //emite o resultado
      }
    });
  }

void _reiniciar(){
  valorSorteado = Random().nextInt(100) + 1;
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
              onPressed: () => _jogoSorteio('Jogar'),
              child: Text('Jogar'),
            ),
            SizedBox(height: 20.0,),
            //if(!boatoReiniciarVisivel)
            ElevatedButton(onPressed: () => _reiniciar(),
             child: Text('Reiniciar')),
            SizedBox(height: 16.0),
            Text(_resultado,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
