import 'package:flutter/material.dart';
import 'package:whack_a_mole_flutter/screens/about.dart';
import 'package:whack_a_mole_flutter/screens/highScores.dart';
import 'package:whack_a_mole_flutter/screens/home.dart';
import 'package:whack_a_mole_flutter/screens/scoreValidator.dart';

void main() {
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
      home: const Home(title: 'Whack-a-mole Home')
      //home: const ScoreValidator(title: 'Score Validator')
      //home: const HighScores(title: 'High Score')
      //home: const About(title: 'About')
    );
  }
}
