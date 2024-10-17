import 'package:flutter/material.dart';
import 'api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ApiService apiService = ApiService('http://10.0.2.2:3000/posts');
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  late Future<List<dynamic>> postsFuture;

  @override
  void initState() {
    super.initState();
    postsFuture = apiService.fetchPosts(); // Carregar dados na inicialização
  }

  void _createPost() async {
    if (titleController.text.isEmpty || bodyController.text.isEmpty) {
      print('Título e corpo não podem estar vazios!');
      return;
    }

    await apiService.createPost(titleController.text, bodyController.text);
    titleController.clear();
    bodyController.clear();
    setState(() {
      postsFuture = apiService.fetchPosts(); // Atualiza a lista de posts
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Integração com API Simples')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Título'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: bodyController,
                decoration: InputDecoration(labelText: 'Corpo'),
              ),
            ),
            ElevatedButton(
              onPressed: _createPost,
              child: Text('Criar Post'),
            ),
            Expanded(
              child: FutureBuilder<List<dynamic>>(
                future: postsFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Erro: ${snapshot.error}'));
                  } else {
                    final posts = snapshot.data!;
                    return ListView.builder(
                      itemCount: posts.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(posts[index]['title']),
                          subtitle: Text(posts[index]['body']),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
