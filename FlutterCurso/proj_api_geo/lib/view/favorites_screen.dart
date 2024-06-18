import 'package:flutter/material.dart';
import 'package:proj_api_geo/Controller/city_db_controller.dart';
import '../Model/city_model.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final CityDbController _cityDbController = CityDbController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: FutureBuilder<List<City>>(
        future: _cityDbController.listCities(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar dados.'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Nenhuma cidade favorita encontrada.'));
          } else {
            List<City> favoriteCities = snapshot.data!;
            return ListView.builder(
              itemCount: favoriteCities.length,
              itemBuilder: (context, index) {
                City city = favoriteCities[index];
                return ListTile(
                  title: Text(city.cityName),
                  subtitle: Text('Population: ${city.cityName}'), // Exemplo de atributo adicional
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      _deleteCity(city);
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<void> _deleteCity(City city) async {
    try {
      await _cityDbController.deleteCity(city.cityName);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${city.cityName} removida dos favoritos.'),
          duration: Duration(seconds: 2),
        ),
      );
      setState(() {}); // Atualiza a lista após a exclusão
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Erro ao remover ${city.cityName} dos favoritos.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}
