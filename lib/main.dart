import 'package:flutter/material.dart';

import 'components/button.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
                image: AssetImage("images/backgroundPattern.png"),
                repeat: ImageRepeat.repeat,
                opacity: 0.10),
          ),
          child: Column(
            children: [
              Container(
                width: 80,
                height: 160,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Color(0xFF58D1FF),
                      width: 30
                    )
                  )
                ),
              ),
              const Text("WHACK-A-MOLE",
                style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 30),
              ),
              const Text("EVERY TAP MATTERS\n\n",
                style: TextStyle(
                    color: Color(0xFF58D1FF),
                    decoration: TextDecoration.none,
                    fontSize: 16
                ),
              ),
              const Button("NEW GAME",Color(0xFF58D1FF)),
              const Button("HIGH SCORES",Colors.white),
              const Button("SCORE VALIDATOR",Colors.white),
              const Button("ABOUT",Colors.white)
            ],
          )
        ),
      );
  }
}
