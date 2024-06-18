import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../Model/city_model.dart';

class CityDbService {
  // Atributos de detalhes do banco
  static const String dbName = 'db2.db'; // Nome do banco de dados
  static const String tableName = 'cities2'; // Nome da tabela
  static const String tableScript = // Script SQL para criar a tabela
      """CREATE TABLE $tableName(
          cityName TEXT PRIMARY KEY,
          favoritesCities INTEGER)""";

  // Abrir banco de dados
  Future<Database> _openDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), dbName), // Caminho do banco de dados
      onCreate: (db, version) {
        return db.execute(tableScript); // Executa o script de criação da tabela quando o banco é criado
      },
      version: 1,
    );
  }

  // Operações CRUD
  // Inserir cidade
  Future<void> insertCity(City city) async {
    try {
      final db = await _openDatabase();
      await db.insert(tableName, city.toMap());
      await db.close();
    } catch (e) {
      print('Erro ao inserir cidade: $e');
    }
  }

  // Listar cidades
  Future<List<Map<String, dynamic>>> listCity() async {
    try {
      final db = await _openDatabase();
      final maps = await db.query(tableName);
      await db.close();
      return maps;
    } catch (e) {
      print('Erro ao listar cidades: $e');
      return [];
    }
  }

  // Deletar cidade
  Future<void> deleteCity(String cityName) async {
    try {
      final db = await _openDatabase();
      await db.delete(tableName, where: 'cityName = ?', whereArgs: [cityName]);
      await db.close();
    } catch (e) {
      print('Erro ao deletar cidade: $e');
    }
  }

  // Atualizar cidade
  Future<void> updateCity(City city) async {
    try {
      final db = await _openDatabase();
      await db.update(tableName, city.toMap(), where: 'cityName = ?', whereArgs: [city.cityName]);
      await db.close();
    } catch (e) {
      print('Erro ao atualizar cidade: $e');
    }
  }
}
