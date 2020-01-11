import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBProvider{
  
  //Propriedades
  DBProvider._();
  static final DBProvider db = DBProvider._();
  static Database _database;

  //Método get de Database
  Future<Database> get database async {
   if (_database != null)
   return _database;

   _database = await initDB();
   return _database;
}

//Método de inicialização
initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "hub.db");
    return await openDatabase(path, version: 1, onOpen: (db) {
    }, onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE Client ("
          "id INTEGER PRIMARY KEY,"
          "first_name TEXT,"
          "last_name TEXT,"
          "blocked BIT"
          ")");
    });
  }

  //Final
}


