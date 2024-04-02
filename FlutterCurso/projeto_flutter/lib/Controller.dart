import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Controller {
  Future<Database> _getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'usuarios.db'),
      onCreate: (db, version) {
        return db.execute(
            "CREATE TABLE usuarios(id INTEGER PRIMARY KEY, nome VARCHAR(20), email VARCHAR(100), senha VARCHAR(100));");
      },
      version: 1,
    );
  }

//criar usuário
  Future<int> createUsuario(String nome, String email, String senha) async {
    final db = await _getDatabase();

    //inserir
    int id = await db.insert(
      'usuarios',
      {'nome': nome, 'email': email, 'senha': senha},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return id;
  }
}
