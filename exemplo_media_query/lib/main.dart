  
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_app/new_page.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 '../lib/assets/flutter.png', // Ajuste o caminho conforme necessário
//                 fit: BoxFit.contain,
//                 height: 50,
//               ),
//             ],
//           ),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               Card(
//                 child: ListTile(
//                   leading: Icon(Icons.info),
//                   title: Text('Sobre Layouts...'),
//                   subtitle: Text('Ver mais...'),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),

//               // Adicione mais Cards aqui conforme necessário
//               Card(
//                 child: ListTile(
//                   leading: Icon(Icons.settings),
//                   title: Text('Configurações'),
//                   subtitle: Text('Ajuste suas preferências'),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),

//               // Exemplo de uso de Row dentro de um Card
//               Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       Icon(Icons.warning),
//                       SizedBox(width: 10), // Espaçamento entre ícone e texto
//                       Text('Atenção'),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   Title(color: Colors.red, child: Text('Idade')),
//                   Icon(Icons.home),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),

//               Column(
//                 children: [
//                   TextField(
//                       decoration: InputDecoration(
//                           icon: new Icon(Icons.person),
//                           labelText: "Nome",
//                           enabledBorder: const OutlineInputBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(20)),
//                           ),
//                           focusedBorder: const OutlineInputBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(5))),
//                           contentPadding: EdgeInsets.symmetric(
//                               vertical: 10.0, horizontal: 10.0))),
//                   ElevatedButton.icon(
//                       onPressed: () {},
//                       icon: new Icon(Icons.message),
//                       label: Text('Mensagem'))
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 'Formulário Básico',
//                 style: TextStyle(fontSize: 20),
//               ),
//               Container(
//                 child: Column(
//                   children: [
//                     TextField(
//                       decoration: InputDecoration(
//                           labelText: "Your name...",
//                           prefixIcon: new Icon(Icons.near_me),
//                           border: OutlineInputBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10)))),
//                     ),
//                     ElevatedButton(onPressed: (){}, child: Text('Enviar'),)
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//         backgroundColor: Colors.green,
//       ),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// Obtém informações sobre o ambiente de exibição
    MediaQueryData mediaQueryData = MediaQuery.of(context);

// Determina a largura da tela
    double screenWidth = mediaQueryData.size.width;
    double screenHeight = mediaQueryData.size.height;

// Calcula o tamanho do texto com base na largura da tela
    double textSize = screenWidth * 0.09;
    double textSizeH = screenHeight * 0.09;

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                '../lib/assets/flutter.png',
                fit: BoxFit.contain,
                height: 50,
              )
            ],
          )),
          drawer: Drawer(backgroundColor: Color.fromARGB(255, 4, 255, 8),),
          body: Container(
              child: Column(
            children: [
              Title(color: Colors.purple, child: Text('Atividade 1 | Lista 1')),
              Container(
                child: Text(
                  'Container 1',
                  style: TextStyle(backgroundColor: Colors.blue),
                ),
              ),
              Container(
                child: Text(
                  'Container 2',
                  style: TextStyle(backgroundColor: Colors.green),
                ),
              ),
              Container(
                child: Text(
                  'Container 3',
                  style: TextStyle(backgroundColor: Colors.yellow),
                ),
              ),
              Row(
                children: [
                  Title(
                      color: Colors.green,
                      child: Text('Atividade 2 | Lista 1')),
                  Icon(Icons.access_alarm),
                  Icon(Icons.alternate_email),
                  Icon(Icons.list),
                  Card(
                    child: Column(
                      children: [
                        Image.asset(
                          '../lib/assets/flutter.png',
                          height: 50,
                        ),
                        Image.asset(
                          '../lib/assets/flutter.png',
                          height: 40,
                        ),
                        Image.asset(
                          '../lib/assets/flutter.png',
                          height: 30,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                  child: ListView(
                children: [
                  Card(
                    child: Text('Card 1'),
                  ),
                  Card(child: Text('Card 2')),
                  Card(child: Text('Card 3')),
                  Card(child: Text('Card 4')),
                  Card(child: Text('Card 5')),
                  Card(child: Text('Card 6')),
                  Card(child: Text('Card 7')),
                  Card(child: Text('Card 8')),
                  Card(child: Text('Card 9')),
                  Card(child: Text('Card 10')),
                  Card(
                    child: Text('Card 1'),
                  ),
                  Card(child: Text('Card 2')),
                  Card(child: Text('Card 3')),
                  Card(child: Text('Card 4')),
                  Card(child: Text('Card 5')),
                  Card(child: Text('Card 6')),
                  Card(child: Text('Card 7')),
                  Card(child: Text('Card 8')),
                  Card(child: Text('Card 9')),
                  Card(child: Text('Card 10')),
                   TextField(
                      decoration: InputDecoration(
                          labelText: 'Seu nome',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Seu E-mail',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Escreva sua mensagem',
                      ),
                    ),
                    ElevatedButton(onPressed: (){}, child: Text('Enviar',))
                ],
              )),
             
            ],
          )),
          bottomNavigationBar:
              BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt), label: 'Compras'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Minha conta')
          ])),
    );
  }
}

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
