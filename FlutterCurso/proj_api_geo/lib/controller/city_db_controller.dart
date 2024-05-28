import 'package:proj_api_geo/service/database_city.dart';

import '../Model/city_model.dart';

class CityDbController {
  //atributos
  List<City> _cities = [];
  final CityDbService _service = CityDbService();
  //get cities
  List<City> cities() => _cities;

  //métodos
  //list from db
  Future<List<City>> listCities() async {
    List<Map<String, dynamic>> maps = await _service.listCity();
    // for(Map<String,dynamic> map in maps){
    //     _cities.add(City.fromMap(map));
    //   }
    _cities = maps.map<City>((e) => City.fromMap(e)).toList();
    return _cities;
  }
  //add city
  Future<void> addCity(City city) async {
    await _service.insertCity(city);
  }
  //update city
  Future<void> updateCity(City city) async {
    await _service.updateCity(city);
  }

  // delete city
  Future<void> deleteCity(String city) async {
    await _service.deleteCity(city);
  }
}
