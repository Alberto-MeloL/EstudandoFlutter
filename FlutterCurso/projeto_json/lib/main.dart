import 'package:flutter/material.dart';
import 'package:projeto_json/View/listar_livros_view.dart';
import 'package:projeto_json/View/cadastrar_livros_view.dart';
import 'package:projeto_json/View/home_screen_view.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Projeto Biblioteca",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomePage(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/cadastro': (context) => const CadastroPage(),
        '/listar': (context) => const ListarLivros()
      },
    );
  }
}
