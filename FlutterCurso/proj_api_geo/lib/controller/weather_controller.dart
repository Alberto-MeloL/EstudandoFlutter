import 'package:proj_api_geo/Service/weather_service.dart';

import '../Model/weather_model.dart';

class WeatherController {
  final List<Weather> _weatherList = [];
  //get
  List<Weather> get weatherList => _weatherList;

  final WeatherService _service = WeatherService();

  //métodos
  //cidade
  Future<void> getWeather(String city) async{
    try {
       Weather weather = Weather.fromJson(await _service.getWeather(city));
       _weatherList.add(weather);
    } catch (e) {
      print(e);
    }
  }
  //geolocation
  Future<void> getWeatherbyLocation(double lat, double lon) async{
    try {
       Weather weather = Weather.fromJson(
        await _service.getWeatherByLocation(lat, lon)
        );
       _weatherList.add(weather);
    } catch (e) {
      print(e);
    }
  }
  //findCity
  Future<bool> findCity(String city) async {
    try {
      return await _service.findCity(city);
    } catch (e) {
      print(e);
      return false;
    }
  }
}