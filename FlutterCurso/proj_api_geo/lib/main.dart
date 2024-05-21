import 'package:flutter/material.dart';
import 'package:proj_api_geo/view/favorites_screen.dart';
import 'package:proj_api_geo/view/home_screen.dart';
import 'package:proj_api_geo/view/datails_screen.dart';
import 'package:proj_api_geo/view/search_screen.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Projeto API GEO',
      home: HomeScreen(),
      // routes: {
      //   '/home': (context) => HomeScreen(),
      //   '/favorites': (context) => FavoriteScreen(),
      //   '/search': (context) => SearchScreen(),
      //   '/details': (context) => DetailsScreen()
      // },
    );
  }
}