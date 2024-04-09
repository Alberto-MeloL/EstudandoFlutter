
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:projeto_flutter/HomePage.dart';
import 'package:sqflite/sqflite.dart';

class Controller {
  static Future<Database> _getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'usuarios.db'),
      onCreate: (db, version) {
        return db.execute(
            "CREATE TABLE usuarios(id INTEGER PRIMARY KEY, nome VARCHAR(20), email VARCHAR(100), senha VARCHAR(100));");
      },
      version: 1,
    );
  }

//salvar tema
Future<void> salvarTema(bool temaEscuro) async {
final db = await _getDatabase();

  await db.insert('usuarios', {'temaEscuro': temaEscuro ? 1 : 0}, conflictAlgorithm: ConflictAlgorithm.replace);
}

//recuperar tema
static Future<bool> getTemaSalvo() async{

  final db = await _getDatabase();

final List<Map<String, dynamic>> maps = await db.query('configuracoes');



//confirmar que tem no minimo uma configuração
if (maps.isNotEmpty) {
  
    return maps.first['temasEscuro'] == 1;
}

return false;//ou seja tema padão

}

  // Criar usuário
  Future<int> createUsuario(String nome, String email, String senha) async {
    final db = await _getDatabase();

    // Inserir
    int id = await db.insert(
      'usuarios',
      {'nome': nome, 'email': email, 'senha': senha},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    
    return id;
  }

  // Fazer login
  Future<bool> fazerLogin(String email, String senha) async {
    final db = await _getDatabase();
    
    // Buscar por usuário
    final List<Map<String, dynamic>> maps = await db.query(
      'usuarios',
      where: "email = ? AND senha = ?",
      whereArgs: [email, senha],
    );

  return maps.isNotEmpty;
  }



}
