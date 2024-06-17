class MusicModel {
  //atributos
  final String title;
  final String artist;
  final String url;

  MusicModel({required this.title, required this.artist, required this.url});

  //fromMap
  factory MusicModel.fromMap(Map<String, dynamic> map) {
    return MusicModel(
      title: map['title'],
      artist: map['artist'],
      url: map['url'],
    );
  }
}
