import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:whack_a_mole_flutter/data/database_helper.dart';
import 'package:whack_a_mole_flutter/screens/about.dart';
import 'package:whack_a_mole_flutter/screens/high_scores.dart';
import 'package:whack_a_mole_flutter/screens/home.dart';
import 'package:whack_a_mole_flutter/screens/score_validator.dart';

import 'data/models/high_score.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /*final db = DatabaseHelper.instance;
  db.insert(
      HighScore(playerName: "Test",score:999, creationDate: DateTime.now().toIso8601String())
  );
  final allRows = await db.queryAllRows();
  allRows?.forEach((row) => print(row));*/

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      //home: const Home(title: 'Whack-a-mole Home')
      //home: const ScoreValidator(title: 'Score Validator')
      home: const HighScores(title: 'High Score')
      //home: const About(title: 'About')
    );
  }
}
