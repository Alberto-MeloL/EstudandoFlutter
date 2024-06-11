import 'package:audioplayers/audioplayers.dart';
import 'package:exemplo2_music_player/models/music_model.dart';
import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatefulWidget {
  final MusicModel music;
  const MusicPlayerScreen({super.key,required this.music});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  late AudioPlayer _audio;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _audio = AudioPlayer();
  }
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    _isPlaying = !_isPlaying;
  }
  
  @override
  void dispose() {
    _audio.dispose();
    super.dispose();
  }
  void _playPause() {
    if (_isPlaying) {
      _audio.pause();
    } else {
      _audio.play(UrlSource(widget.music.url));
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.music.title),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
          iconSize: 64.0,
          onPressed: _playPause,
        ),
      ),
    );
  }
}
