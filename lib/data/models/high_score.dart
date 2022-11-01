import 'package:sqflite/sqflite.dart';
import 'package:whack_a_mole_flutter/data/database_helper.dart';

class HighScore {
  late int id;
  late String playerName;
  late int score;
  late String creationDate;

  HighScore({
    this.id = 0,
    required this.playerName,
    required this.score,
    required this.creationDate
  });

  HighScore.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    playerName = map['player_name'];
    score = map['score'];
    creationDate = map['creation_date'];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'player_name': playerName,
      'score': score,
      'creation_date': creationDate
    };
  }

  @override
  String toString() {
    return 'HighScore{id: $id, player_name: $playerName, score: $score, creation_date: $creationDate}';
  }
}