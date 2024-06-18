class City {
  // Atributos
  final String cityName;
  final bool favoritesCities;

  // Construtor
  City({required this.cityName, required this.favoritesCities});

  // Converter City para Map
  Map<String, dynamic> toMap() {
    return {'cityName': cityName, 'favoritesCities': favoritesCities ? 1 : 0};
  }

  // Criar City a partir de Map
  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      cityName: map['cityName'],
      favoritesCities: map['favoritesCities'] == 1,
    );
  }
}
