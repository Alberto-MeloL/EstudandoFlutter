class City {
// atributos
  final String cityName;
  final bool favoritesCities;

  City({required this.cityName, required this.favoritesCities});

  Map<String, dynamic> toMap() {
    // normalização de banco de dados
    return {'cityname': cityName, 'favoritescities': favoritesCities};
  }

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
        cityName: map['cityname'], favoritesCities: map['favoritescities']);
  }
}
