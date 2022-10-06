import 'package:flutter/material.dart';

import '../components/button.dart';

class HighScores extends StatelessWidget {
  const HighScores({Key? key, required this.title}) : super(key: key);

  final String title;

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
              ListView(
                padding: const EdgeInsets.only(left:25,right:25,top:10,bottom:10),
                shrinkWrap: true,
                children: [
                  Container(
                    height: 55,
                    width: 100,
                    color: const Color(0xFF333333),
                    child: const Text("\n 10/6/2022, 7:02:20 PM   PLAYER1    100",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 55,
                    width: 100,
                    color: const Color(0xFF333333),
                    child: const Text("\n 10/6/2022, 7:02:20 PM   PLAYER1    100",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 55,
                    width: 100,
                    color: const Color(0xFF333333),
                    child: const Text("\n 10/6/2022, 7:02:20 PM   PLAYER1    100",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 55,
                    width: 100,
                    color: const Color(0xFF333333),
                    child: const Text("\n 10/6/2022, 7:02:20 PM   PLAYER1    100",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 55,
                    width: 100,
                    color: const Color(0xFF333333),
                    child: const Text("\n 10/6/2022, 7:02:20 PM   PLAYER1    100",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 55,
                    width: 100,
                    color: const Color(0xFF333333),
                    child: const Text("\n 10/6/2022, 7:02:20 PM   PLAYER1    100",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 55,
                    width: 100,
                    color: const Color(0xFF333333),
                    child: const Text("\n 10/6/2022, 7:02:20 PM   PLAYER1    100",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 55,
                    width: 100,
                    color: const Color(0xFF333333),
                    child: const Text("\n 10/6/2022, 7:02:20 PM   PLAYER1    100",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 55,
                    width: 100,
                    color: const Color(0xFF333333),
                    child: const Text("\n 10/6/2022, 7:02:20 PM   PLAYER1    100",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Button("BACK TO MENU", Color(0xFF58D1FF))
                ],
              )
            ],
          )
      ),
    );
  }
}