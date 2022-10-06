import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/donut.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);

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
            children: const [
              Donut(Color(0xFF58D1FF)),
              Text("WHACK-A-MOLE",
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 30),
              ),
              Text("EVERY TAP MATTERS\n\n",
                style: TextStyle(
                    color: Color(0xFF58D1FF),
                    decoration: TextDecoration.none,
                    fontSize: 16
                ),
              ),
              Button("NEW GAME",Color(0xFF58D1FF)),
              Button("HIGH SCORES",Colors.white),
              Button("SCORE VALIDATOR",Colors.white),
              Button("ABOUT",Colors.white)
            ],
          )
      ),
    );
  }
}