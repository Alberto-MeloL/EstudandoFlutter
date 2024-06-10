// Importa o pacote de widgets do Flutter, que contém os widgets para construir interfaces de usuário.
import 'package:flutter/material.dart';

// Importa o serviço WeatherService, que é responsável por obter os dados de previsão do tempo da API.
import 'service.dart';

// Classe StatefulWidget que representa o widget de previsão do tempo.
class WeatherScreen extends StatefulWidget {
  // Sobrescreve o método createState para criar e retornar uma instância do estado do widget.
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

// Classe que representa o estado do widget de previsão do tempo.
class _WeatherScreenState extends State<WeatherScreen> {
  // Instância do serviço WeatherService para obter os dados de previsão do tempo.
  final WeatherService _weatherService = WeatherService(
    apiKey:
        '681126f28e7d6fa3a7cfe0da0671e599', // Chave de API para acesso à API de previsão do tempo.
    baseUrl:
        'https://api.openweathermap.org/data/2.5', // URL base da API de previsão do tempo.
  );

  // Mapa que armazenará os dados de previsão do tempo.
  late Map<String, dynamic> _weatherData;

  // Método chamado quando o estado é inicializado.
  @override
  void initState() {
    super.initState();
    _fetchWeatherData(
        'Rio de Janeiro'); // Chama o método para buscar os dados de previsão do tempo para São Paulo.
  }

  // Método assíncrono para buscar os dados de previsão do tempo para uma cidade específica.
  Future<void> _fetchWeatherData(String city) async {
    try {
      // Obtém os dados de previsão do tempo para a cidade especificada.
      final weatherData = await _weatherService.getWeather(city);
      // Atualiza o estado do widget com os novos dados de previsão do tempo.
      setState(() {
        _weatherData = weatherData;
      });
    } catch (e) {
      // Em caso de erro ao buscar os dados de previsão do tempo, exibe uma mensagem de erro no console.
      print('Error fetching weather data: $e');
    }
  }

  // Método responsável por construir a interface de usuário do widget.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Weather Forecast'),
          // Título da barra de aplicativos.
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  controller: _cityController,
                  decoration:
                      const InputDecoration(labelText: "Insira a cidade"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Insira a cidade';
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(onPressed: onPressed, child: Text)
              ],
            )),
          ),
        ));
  }
}
