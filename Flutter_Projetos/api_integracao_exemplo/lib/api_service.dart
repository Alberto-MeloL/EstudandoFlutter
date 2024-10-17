import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl;

  ApiService(this.baseUrl);

  Future<List<dynamic>> fetchPosts() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      return json.decode(response.body); // Retorna os posts
    } else {
      throw Exception('Falha ao carregar posts');
    }
  }

  Future<void> createPost(String title, String body) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, String>{
        'title': title,
        'body': body,
      }),
    );

    if (response.statusCode != 201) {
      throw Exception('Falha ao criar post');
    }
  }
}
