import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:whack_a_mole_flutter/data/models/high_score.dart';

/// Source : https://www.tutorialkart.com/flutter/flutter-sqlite-tutorial/
class DatabaseHelper {

  static const _databaseName = "highscores.db";
  static const _databaseVersion = 1;

  static const _table = "high_scores";

  // Déclarer l'instance du singleton
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  //////////////////////////////////////

  static Database? _database;

  Future<dynamic> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(
        path,
        version: _databaseVersion,
        onCreate: (db, version) {
            return db.execute(
            '''
                CREATE TABLE high_scores(
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    player_name TEXT NOT NULL,
                    score INTEGER NOT NULL,
                    creation_date TEXT NOT NULL
                )
            '''
      );
    }
    );
  }

  // Helper methods

  // Inserts a row in the database where each key in the Map is a column name
  // and the value is the column value. The return value is the id of the
  // inserted row.
  Future<int?> insert(HighScore highScore) async {
    Database? db = await instance.database;
    return await db?.insert(_table,
        {
          'player_name': highScore.playerName,
          'score': highScore.score,
          'creation_date': highScore.creationDate
        }
    );
  }

  Future<List<Map<String, dynamic>>?> queryAllRows() async {
    Database? db = await instance.database;
    return await db?.query(_table);
  }

  // We are assuming here that the id column in the map is set. The other
  // column values will be used to update the row.
  Future<int?> update(HighScore highScore) async {
    Database? db = await instance.database;
    int id = highScore.toMap()['id'];
    return await db?.update(_table, highScore.toMap(), where: 'id = ?', whereArgs: [id]);
  }

  // Deletes the row specified by the id. The number of affected rows is
  // returned. This should be 1 as long as the row exists.
  Future<int?> delete(int id) async {
    Database? db = await instance.database;
    return await db?.delete(_table, where: 'id = ?', whereArgs: [id]);
  }
}