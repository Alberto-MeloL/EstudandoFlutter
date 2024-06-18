import 'package:proj_api_geo/service/database_city.dart';
import '../Model/city_model.dart';

class CityDbController {
  // Atributos
  List<City> _cities = [];
  final CityDbService _service = CityDbService();

  // Getter para cidades
  List<City> get cities => _cities;

  // Métodos
  // Lista de cidades do banco de dados
  Future<List<City>> listCities() async {
    List<Map<String, dynamic>> maps = await _service.listCity();
    _cities = maps.map<City>((e) => City.fromMap(e)).toList();
    return _cities;
  }

  // Adicionar cidade
  Future<void> addCity(City city) async {
    await _service.insertCity(city);
  }

  // Atualizar cidade
  Future<void> updateCity(City city) async {
    await _service.updateCity(city);
  }

  // Deletar cidade
  Future<void> deleteCity(String cityName) async {
    await _service.deleteCity(cityName);
  }
}
