// import 'package:flutter/material.dart';
// import 'package:flutter_app/new_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
// // Obtém informações sobre o ambiente de exibição
//     MediaQueryData mediaQueryData = MediaQuery.of(context);

// // Determina a largura da tela
//     double screenWidth = mediaQueryData.size.width;

// // Calcula o tamanho do texto com base na largura da tela
//     double textSize = screenWidth * 0.05;

//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//               title: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 '../lib/assets/flutter.png',
//                 fit: BoxFit.contain,
//                 height: 50,
//               )
//             ],
//           )),
//           body: Container(
//               child: Column(
//             children: [
//               Title(color: Colors.purple, child: Text('Atividade 1 | Lista 1')),
//               Container(
//                 child: Text(
//                   'Container 1',
//                   style: TextStyle(backgroundColor: Colors.blue),
//                 ),
//               ),
//               Container(
//                 child: Text(
//                   'Container 2',
//                   style: TextStyle(backgroundColor: Colors.green),
//                 ),
//               ),
//               Container(
//                 child: Text(
//                   'Container 3',
//                   style: TextStyle(backgroundColor: Colors.yellow),
//                 ),
//               ),
//               Row(
//                 children: [
//                   Title(
//                       color: Colors.green,
//                       child: Text('Atividade 2 | Lista 1')),
//                   Icon(Icons.access_alarm),
//                   Icon(Icons.alternate_email),
//                   Icon(Icons.list),
//                   Card(
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           '../lib/assets/flutter.png',
//                           height: 50,
//                         ),
//                         Image.asset(
//                           '../lib/assets/flutter.png',
//                           height: 40,
//                         ),
//                         Image.asset(
//                           '../lib/assets/flutter.png',
//                           height: 30,
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               Expanded(
//                   child: ListView(
//                 children: [
//                   Card(
//                     child: Text('Card 1'),
//                   ),
//                   Card(child: Text('Card 2')),
//                   Card(child: Text('Card 3')),
//                   Card(child: Text('Card 4')),
//                   Card(child: Text('Card 5')),
//                   Card(child: Text('Card 6')),
//                   Card(child: Text('Card 7')),
//                   Card(child: Text('Card 8')),
//                   Card(child: Text('Card 9')),
//                   Card(child: Text('Card 10')),
//                   Card(
//                     child: Text('Card 1'),
//                   ),
//                   Card(child: Text('Card 2')),
//                   Card(child: Text('Card 3')),
//                   Card(child: Text('Card 4')),
//                   Card(child: Text('Card 5')),
//                   Card(child: Text('Card 6')),
//                   Card(child: Text('Card 7')),
//                   Card(child: Text('Card 8')),
//                   Card(child: Text('Card 9')),
//                   Card(child: Text('Card 10'))
//                 ],
//               )),
//             ],
//           )),
//           bottomNavigationBar:
//               BottomNavigationBar(items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.list_alt), label: 'Compras'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.person), label: 'Minha conta')
//           ])),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//      int _indiceAtual = 0;//controla os índices das telas

//   final List<Widget> _telas = [
//     NewPageScreen("Início"),
//     NewPageScreen("Compras"),
//     NewPageScreen("Minha conta"),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: _telas[_indiceAtual],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _indiceAtual,
//         onTap: onTabTapped,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),
//           BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Compras"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person), label: "Minha conta")
//         ],
//       ),
//     );

//   }
//     void onTabTapped(int index){
//       setState(() {
//         _indiceAtual = index;
//       });
//     }
// }

// class NewPageScreen extends StatelessWidget{
//   final String texto;

// NewPageScreen(this.texto);

//   @override
//   Widget build(BuildContext context){
//     return Container(
//       child: Center(
//         child: Text(texto),
//       ),
//     );
//   }
// }

// // class _HomeScreenState extends State<HomeScreen>{

// //   int _indiceAtual = 0;//controla os índices das telas

// //   final List<Widget> _telas = [
// //      NewPageScreen("Minha conta"),
// //     NewPageScreen("Meus pedidos"),
// //     NewPageScreen("Favoritos")
// //   ];
// // }

// //  class Formulario extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Tela Secundária'),
// //       ),
// //       body: Center(
// //         child: ElevatedButton(
// //           child: Text('Voltar para a Tela Principal'),
// //           onPressed: () {
// //             Navigator.pop(context);
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class _MyAppState extends State<MyApp>{
// //   int _selected
// // }
// // void _onItemTapped(int index){
// // setState((){
// //   _se
// // })
// // }