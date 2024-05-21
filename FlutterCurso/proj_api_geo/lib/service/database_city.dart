import 'package:path/path.dart';
import 'package:proj_api_geo/model/weather_model.dart';
import 'package:sqflite/sqflite.dart';

//configurações dp banco de dados
class CRUD {
  static const String DataBase = 'city.db'; //static const etc...
  static const String Table = 'city';
  static const String CreateTable = "CREATE TABLE IF NOT EXISTS city(city TEXT)";

//com * no async
  Future<Database> _getDataBase() async {
    return openDatabase(join(await getDatabasesPath(), DataBase),
        onCreate: (db, version) => {db.execute(CreateTable)}, version: 1);
  }

//inserir um usuario
  Future<void> create(Weather weather) async {
    try {
      final Database db = await _getDataBase();
      await db.insert(Table, weather.name as Map<String, Object?>);
    } catch (error) {
      print(error);
      return;
    }
  }

//pegar um usuario
  Future<Weather?> getCity(String city) async {
    try {
      final Database db = await _getDataBase();
      final List<Map<String, dynamic>> maps = await db.query(Table,
          where: 'city = ?', whereArgs: [city]);

          //se nao for vazio
          if (maps.isNotEmpty) {
            return Weather.fromJson(maps[0]);
          }else{
            return null;
          }
    } catch (error) {
      print(error);
      return null;
    }
  }

  //verificar se existe um usuario
  Future<bool> existsCity(String city) async{
    try {
      final Database db = await _getDataBase();
   final List<Map<String, dynamic>> maps =
          await db.query(Table,
          where: 'city = ?',
          whereArgs: [city]
          ); // Consulta todos os contatos na Table

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