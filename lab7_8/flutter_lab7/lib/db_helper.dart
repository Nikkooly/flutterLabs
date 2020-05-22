
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'Hobby.dart';

class DBHelper {
  static Database _db;
  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDatabase();
    return _db;
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'hobby.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db
        .execute('CREATE TABLE hobby (id INTEGER PRIMARY KEY, name TEXT)');
  }

  Future<Hobby> add(Hobby hobby) async {
    var dbClient = await db;
    hobby.id = await dbClient.insert('hobby', hobby.toMap());
    return hobby;
  }

  Future<List<Hobby>> getHobbies() async {
    var dbClient = await db;
    List<Map> maps = await dbClient.query('hobby', columns: ['id', 'name']);
    List<Hobby> hobbies = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        hobbies.add(Hobby.fromMap(maps[i]));
      }
    }
    return hobbies;
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient.delete(
      'hobby',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> update(Hobby hobby) async {
    var dbClient = await db;
    return await dbClient.update(
      'hobby',
      hobby.toMap(),
      where: 'id = ?',
      whereArgs: [hobby.id],
    );
  }

  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }
}
