import 'package:app_lista1/TarefaController.dart';
import 'package:app_lista1/TarefaView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ListaTarefasApp extends StatelessWidget {
  
  @override
Widget build(BuildContext context){
  return MaterialApp(
    //definindo a tela inicial como a ListaTarefas
    home: ChangeNotifierProvider(create: (context) => ListaTarefasController(),
    child: ListaTarefasScreen(),)
  );
}
  //como se fosse o router do Angular
 }