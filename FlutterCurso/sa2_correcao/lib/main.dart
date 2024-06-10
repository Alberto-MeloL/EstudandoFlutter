import 'package:flutter/material.dart';

// docker

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SA2',
      debugShowCheckedModeBanner: false,
      // home: PaginaLogin(),
    );
  }
}