import 'package:flutter/material.dart';
import 'package:whack_a_mole_flutter/data/database_helper.dart';

import '../components/button.dart';
import '../data/models/high_score.dart';

class PostHighScore extends StatefulWidget {
  PostHighScore({Key? key, required this.title}) : super(key: key);

  final String title;



  @override
  State<PostHighScore> createState() => _PostHighScoreState();
}

class _PostHighScoreState extends State<PostHighScore> {

  String name = "";
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Post Score',
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
              const Text("POST SCORE",
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 30),
              ),
              const Divider(color: Colors.white38),
              Material(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Spacer(),
                          const Text("NAME:",
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 50,
                            width: 250,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xFF58D1FF))
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xFF58D1FF))
                                  ),
                                  disabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xFF58D1FF))
                                  )
                              ),
                              onChanged: (String value) {
                                name = value;
                              },
                            ),
                          ),
                          const Spacer()
                        ],
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          const Text("SCORE:",
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 50,
                            width: 250,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xFF58D1FF))
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xFF58D1FF))
                                  ),
                                  disabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xFF58D1FF))
                                  )
                              ),
                              onChanged: (String value) {
                                score = int.parse(value);
                              },
                            ),
                          ),
                          const Spacer()
                        ],
                      ),
                      const Text("\n"),
                      Container(
                        height: 50.0,
                        width: 400.0,
                        margin: const EdgeInsets.only(top:5.0,bottom:5.0,left:40.0,right:40.0),
                        //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                fixedSize: const Size(50,200),
                                primary: const Color(0xFF58D1FF),
                                side: const BorderSide(
                                    color: Color(0xFF58D1FF),
                                    width: 2.0
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0)
                                ),
                                backgroundColor: Colors.transparent
                            ),
                            onPressed: () {
                              DatabaseHelper.instance.insert(
                                  HighScore(playerName: name, score: score, creationDate: DateTime.now().toIso8601String())
                              );
                            },
                            child: const Text("POST SCORE")
                        ),
                      )
                    ],
                  )

              ),
              const Spacer()


            ],
          )
      ),
    );
  }
}

