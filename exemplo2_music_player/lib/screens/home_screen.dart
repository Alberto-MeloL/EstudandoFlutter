import 'package:exemplo2_music_player/services/music_controller.dart';
import 'package:flutter/material.dart';

import 'music_player_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MusicService _service = MusicService();

  Future<void> _getList() async{
    try {
      await _service.fetchList();
    } catch (e) {
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: 
      Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child:Column(
            children: [
              Expanded(
                child: FutureBuilder(
                  future: _getList(), 
                  builder: (context,snapshot){
                    if(snapshot.connectionState == ConnectionState.waiting){
                      return Center(child: CircularProgressIndicator());
                    }else if(_service.list.isEmpty){
                      return Center(child: Text('Não há músicas cadastradas'));
                    }else{
                      return ListView.builder(
                        itemCount: _service.list.length,
                        itemBuilder: (context,index){
                          return ListTile(
                            title: Text(_service.list[index].title),
                            subtitle: Text(_service.list[index].artist),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => 
                                    MusicPlayerScreen(music: _service.list[index])),
                              );
                            },
                          );
                        });
                    }
                  }))
            ],)
        ),)
    );
  }
}