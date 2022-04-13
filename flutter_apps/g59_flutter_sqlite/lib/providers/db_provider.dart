import 'dart:io';
import 'package:g59_flutter_sqlite/models/user_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  //Instance of sigleton
  static final DBProvider db = DBProvider._();
  DBProvider._();

  //Retornar la instancia de BD
  static late Database _databasetemp;
  static Database? _database;
  Future<Database> get database async {
    if (_database != null) {
      return _database ?? _databasetemp;
    }
    _database = await createDB();
    return _database ?? _databasetemp;
  }

  Future<Database> createDB() async {
    //1.- Determinar la ruta de donde esta instalado nuestra app
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    //2.- Determinar ruta + nombre de DB
    final path = join(documentDirectory.path, "BDSQLITE.db");
    //3.- Creamos BD y tabla
    return await openDatabase(
      path,
      version: 2,
      onCreate: (Database db, int version) async {
        await db.execute('''
        CREATE TABLE Users (
          id       INTEGER PRIMARY KEY, 
          name     TEXT, 
          lastName TEXT
        )
       ''');
      },
    );
  }

  Future<int> insert({
    required UserModel user,
  }) async {
    final db = await database;
    final response = db.insert("Users", user.toJson());
    return response;
  }

  Future<List<UserModel>> getAllUser() async {
    final db = await database;
    final response = await db.query("Users");

    return response.isNotEmpty
        ? response.map((json) => UserModel.fromJson(json)).toList()
        : [];
  }

  Future<int> delete(int id) async {
    final db = await database;
    return await db.delete("Users", where: 'id = ?', whereArgs: [id]);
  }
}
