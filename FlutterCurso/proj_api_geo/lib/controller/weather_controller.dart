import 'package:proj_api_geo/model/weather_model.dart';
import 'package:proj_api_geo/service/weather_service.dart';

class WeatherController {
  List<Weather> _weatherList = [];

// get
  List<Weather> get weatherList => _weatherList;

// serviço
  WeatherService _service = WeatherService();
// métodos

// apos criar a axceção no service, eu trato ela aqui no controller
  Future<void> getWeather(String city) async {
    try {
      Weather weather = Weather.fromJson(await _service.getWeather(city));
      _weatherList.add(weather);
    } catch (e) {
      print('Erro no controller');
      print(e);
    }
  }

  Future<void> getWeatherByLocation(double lat, double lon) async {
    try {
      Weather weather =
          Weather.fromJson(await _service.getWeatherByLocation(lat, lon));
      _weatherList.add(weather);
    } catch (e) {
      print('Erro no controller');
      print(e);
    }
  }
}
