import 'package:flutter/material.dart';
import 'package:projeto_flutter/HomePage.dart';
import 'package:projeto_flutter/Controller.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

final Controller controller = Controller();
final bool temaEscuro = await Controller.getTemaSalvo();

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Persistência de Dados",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),home: HomePage(),
    );
  }
}