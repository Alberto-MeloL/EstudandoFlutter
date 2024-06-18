import 'package:flutter/material.dart';
import 'package:proj_api_geo/Controller/city_db_controller.dart';
import 'package:proj_api_geo/controller/weather_controller.dart';
import 'package:proj_api_geo/view/datails_screen.dart';
import '../Model/city_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _cityController = TextEditingController();
  final WeatherController _controller = WeatherController();
  final CityDbController _dbController = CityDbController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search")),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                      controller: _cityController,
                      decoration:
                          InputDecoration(hintText: "Enter the city name"),
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return "Please enter a city";
                        }
                        return null;
                      }),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _cityFind(_cityController.text);
                        }
                      },
                      child: const Text("Search")),
                      const SizedBox(height: 12,),
                      Expanded(
                        child: FutureBuilder(
                          future: _dbController.listCities(), 
                          builder: (context,snapshot){
                            if(_dbController.cities.isNotEmpty){
                              return ListView.builder(
                                  itemCount: _dbController.cities.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(_dbController.cities[index].cityName),
                                      onTap: () {
                                        //
                                      },
                                    );
                                  });
                            }
                            return const Center(child: Text("Empty Location"));
                          }),
                      )

                ],
              )),
        ),
      ),
    );
  }

  Future<void> _cityFind(String city) async {
    if (await _controller.findCity(city)) {
      //snackbar
       City cityadd = City(cityName:city,favoritesCities:true);
      _dbController.addCity(cityadd);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("City found"),
          duration: Duration(seconds: 1),
        ),
      );
      //navigation to details
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WeatherDetailsScreen(cityName: city)));
      setState(() {});
    }else{
      // snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("City not found"),
          duration: Duration(seconds: 2),
        ),
      );
      _cityController.clear();
    }
  }
}