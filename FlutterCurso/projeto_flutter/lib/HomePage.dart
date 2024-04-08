import 'package:flutter/material.dart';
import 'View.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    //layout responsivo
    double screenWidth = mediaQueryData.size.width; //largura
    double screenHeight = mediaQueryData.size.height; //altura

//calcula o tamanho da tela
    double textSize = screenWidth * 0.09;
    double textSizeHeight = screenHeight * 0.09;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Projeto Flutter"),
      ),
       body: ViewScreen(),
    );
  }
}
