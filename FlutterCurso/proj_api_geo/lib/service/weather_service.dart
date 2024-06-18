import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  final String apiKey = "e83b3c4c08285bf87b99f9bbc0abe3f0";
  final String baseUrl = "https://api.openweathermap.org/data/2.5/weather";

  Future<Map<String, dynamic>> getWeather(String city) async {
    final url = Uri.parse('$baseUrl?q=$city&appid=$apiKey');
    print('Requesting weather data for city: $city, URL: $url');
    try {
      final response = await http.get(url);
      print('Response status: ${response.statusCode}, body: ${response.body}');
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      print('Exception caught: $e');
      throw Exception('Failed to load weather data');
    }
  }

  Future<Map<String, dynamic>> getWeatherByLocation(double lat, double lon) async {
    final url = Uri.parse('$baseUrl?lat=$lat&lon=$lon&appid=$apiKey');
    print('Requesting weather data for location: lat=$lat, lon=$lon, URL: $url');
    try {
      final response = await http.get(url);
      print('Response status: ${response.statusCode}, body: ${response.body}');
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      print('Exception caught: $e');
      throw Exception('Failed to load weather data');
    }
  }

  Future<bool> findCity(String city) async {
    final url = Uri.parse('$baseUrl?q=$city&appid=$apiKey');
    print('Finding city: $city, URL: $url');
    try {
      final response = await http.get(url);
      print('Response status: ${response.statusCode}, body: ${response.body}');
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Exception caught: $e');
      return false;
    }
  }
}
