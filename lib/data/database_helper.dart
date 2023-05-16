import 'dart:io';
import 'package:flutter_gus_bandera/models/goose_map.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'gus_map.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE gus_map(
          id INTEGER PRIMARY KEY,
          title TEXT
      )
      ''');
  }

  Future<List<GusMap>> getGusMap() async {
    Database db = await instance.database;
    var gusMap = await db.query('gus_map');
    List gusMapList =
        gusMap.isNotEmpty ? gusMap.map((c) => GusMap.fromMap(c)).toList() : [];
    return gusMapList as List<GusMap>;
  }

  Future<int> add(GusMap gusMap) async {
    Database db = await instance.database;
    return await db.insert('gus_map', gusMap.toMap());
  }
}
