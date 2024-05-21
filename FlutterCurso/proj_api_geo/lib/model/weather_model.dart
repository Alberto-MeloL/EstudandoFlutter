class Weather {
  // amguns atributos da api
  final String name;
  final String main;
  final String temp;
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
  main: json['main'][0]['main'],
  temp: json['main'][0]['temp'],
  description: json['weather'][0]['description'],
  tempMax: json['main']['temp_max'],
  tempMin: json['main']['temp_min']
  );
}
}
