// ignore_for_file: avoid_print

import 'package:proj_api_geo/model/weather_model.dart';
import 'package:proj_api_geo/service/weather_service.dart';

class WeatherController {
  final List<Weather> _weatherList = [];

// get
  List<Weather> get weatherList => _weatherList;

// serviço
  final WeatherService _service = WeatherService();
// métodos

// apos criar a axceção no service, eu trato ela aqui no controller
  Future<void> getWeather(String city) async {
    try {
      Weather weather = Weather.fromJson(await _service.getWeather(city));
      _weatherList.add(weather);
    } catch (e) {
      // ignore: avoid_print
      print('Erro no controller $e',);
    }
  }

  Future<void> getWeatherByLocation(double lat, double lon) async {
    try {
      Weather weather =
          Weather.fromJson(await _service.getWeatherByLocation(lat, lon));
      _weatherList.add(weather);
    } catch (e) {
      print('Erro no controller');
      // ignore: avoid_print
      print(e);
    }
  }

  // fazer buscas relacionadas
  Future<bool> findCity(String city) async {
    try {
      return await _service.findCity(city);
    } catch (e) {
      print(e);
      return false;
    }
  }
}
