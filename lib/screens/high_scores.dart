import 'package:flutter/material.dart';
import 'package:whack_a_mole_flutter/components/high_score_card.dart';

import '../components/button.dart';
import '../data/database_helper.dart';
import '../data/models/high_score.dart';

class HighScores extends StatefulWidget {
  final String title;

  const HighScores({Key? key,required this.title}) : super(key: key);


  @override
  State<HighScores> createState() => _HighScoresState();
}

class _HighScoresState extends State<HighScores> {
  final dbHelper = DatabaseHelper.instance;
  List<HighScore> highscores = [];

  @override
  void initState() {
    super.initState();
    _queryAll();
  }

  void _queryAll() async {
    final allRows = await dbHelper.queryAllRows();
    highscores.clear();
    allRows?.forEach((row) => highscores.add(HighScore.fromMap(row)));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF0B1D31),
            image: DecorationImage(
                scale: 1.0,
                image: AssetImage("assets/images/backgroundPattern.png"),
                repeat: ImageRepeat.repeat,
                opacity: 0.10),
          ),
          child: Column(
            children: [
              const Text("HIGHSCORES",
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 30),
              ),
              ListView.builder(
                padding: const EdgeInsets.only(left:25,right:25,top:10,bottom:10),
                shrinkWrap: true,
                itemCount: highscores.length,
                itemBuilder: (BuildContext context, int index) {
                  return HighScoreCard(
                      highscores[index].creationDate,
                      highscores[index].playerName,
                      highscores[index].score,
                      highscores[index].id
                  );
                }
                ),
              const Button("BACK TO MENU", Color(0xFF58D1FF))
            ],
          )
      ),
    );
  }
}