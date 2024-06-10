class Weather {
  // amguns atributos da api
  final String name;
  final String main;
  final double temp;
  final String description;
  final double tempMax;
  final double tempMin;

// construtor
  Weather(
      {required this.name,
      required this.temp,
      required this.tempMax,
      required this.tempMin,
      required this.description,
      required this.main});

  // método
factory Weather.fromJson(Map<String, dynamic> json){

  return Weather(
 name: json['name'],
      description: json['weather'][0]['description'],
      main: json['weather'][0]['main'],
      temp: json['main']['temp'],
      tempMax: json['main']['temp_max'],
      tempMin: json['main']['temp_min'],
  );
}
}
