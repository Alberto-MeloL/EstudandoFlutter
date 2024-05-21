import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:proj_api_geo/controller/weather_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // controller
  WeatherController _controller = WeatherController();
  // ao abrir a tela, falo uma inicialzaçao
  @override
  void initState() {
    // chama o método
    _getWeather();
  }

// geolocalização
  Future<void> _getWeather() async {
    try {
      // pego a posição atual
      // a geolocator é uma biblioteca do dart
      // por isso é sempre bom ler a documentação oficial, em https://pub.dev/packages/geolocator
      Position _position = await Geolocator.getCurrentPosition();
// printar informações para saber se esta funcionando corretamente
      print(_position.latitude);
      print(_position.longitude);
      _controller.getWeatherByLocation(_position.latitude, _position.longitude);

      // para manter atualizado
      setState(() {});
    } catch (e) {
      // aqui printa o que você deseja
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Previsão do tempo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Buscar Favotitos")),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Localização"))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // contruir a exibição do clima, ela roda ao abrir a aplicação

              _controller.weatherList.isEmpty ? 
              Column(
                children: [
                const Text("Localização não encontrada."),
                IconButton(onPressed: (){_getWeather();}, icon: const Icon(Icons.refresh))
                ],
              )
              
               : 
              
              Column(
                // talvez colocar um carregando
                children: [
                  Text(_controller.weatherList.last.name),
                  Text(_controller.weatherList.last.main),
                  // Text((_controller.weatherList.last.temp - 273)),
                  Text(_controller.weatherList.last.description),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
