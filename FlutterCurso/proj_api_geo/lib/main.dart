import 'package:flutter/material.dart';

// import 'view/datails_screen.dart';
import './view/favorites_screen.dart';
import 'View/home_screen.dart';
import 'view/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Projeto API GEO",
        home: const HomeScreen(),
        routes: {
          '/home': (context) => const HomeScreen(),
          '/favorites': (context) => const FavoritesScreen(),
          '/search': (context) => const SearchScreen(),
          // '/details': (context) => WeatherDetailsScreen(cityName: '',)
        });
  }
}
