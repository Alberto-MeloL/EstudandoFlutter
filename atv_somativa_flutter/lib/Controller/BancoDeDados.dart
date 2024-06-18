import 'package:path/path.dart';
import 'package:atv_somativa_flutter/Model/Usuario.dart';
import 'package:sqflite/sqflite.dart';

//configurações dp banco de dados
class CRUD {
  static const String BancoDados = 'usuario.db'; //static const etc...
  static const String Tabela = 'usuario';
  static const String CraiarTAbela = "CREATE TABLE IF NOT EXISTS user(" +
      "id SERIAL PRIMARY KEY," +
      "nome TEXT, email TEXT UNIQUE," +
      "idade TEXT"+
      "senha TEXT)";

//com * no async
  Future<Database> _getDataBase() async {
    return openDatabase(join(await getDatabasesPath(), BancoDados),
      onCreate: (db, version) => {db.execute(CraiarTAbela)}, version: 1);
  }

//inserir um usuario
  Future<void> create(Usuario usuario) async {
    try {
      final Database db = await _getDataBase();
      await db.insert(Tabela, usuario.toMap());
    } catch (error) {
      print(error);
      return;
    }
  }

//pegar um usuario
  Future<Usuario?> getUsuario(String email, String senha) async {
    try {
      final Database db = await _getDataBase();
      final List<Map<String, dynamic>> maps = await db.query(Tabela,
          where: 'email = ? AND senha = ?', whereArgs: [email, senha]);

          //se nao for vazio
          if (maps.isNotEmpty) {
            return Usuario.fromMap(maps[0]);
          }else{
            return null;
          }
    } catch (error) {
      print(error);
      return null;
    }
  }

  //verificar se existe um usuario
  Future<bool> existeUsuario(String email, String senha) async{
    try {
      final Database db = await _getDataBase();
   final List<Map<String, dynamic>> maps =
          await db.query(Tabela,
          where: 'email = ? AND senha = ?',
          whereArgs: [email,senha]
          ); // Consulta todos os contatos na tabela

      if (maps.isNotEmpty){
        return true;
      }else{
        return false;
      }
    } catch (ex) {
      print(ex);
      return false;
    }
  }
}