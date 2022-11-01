import 'package:flutter/material.dart';

import '../components/donut.dart';

class About extends StatelessWidget {
  const About({Key? key, required this.title}) : super(key: key);

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
              Spacer(),
              Divider(color: Colors.white38),
              Text("ABOUT",
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 20),
              ),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut varius sapien, a porta neque. Donec ullamcorper odio non massa hendrerit pulvinar. Curabitur felis lacus, ullamcorper ac bibendum eget, congue eget justo. Curabitur porta velit quam. Pellentesque elementum ut nulla sit amet tincidunt. Curabitur ac elementum dui. Ut eget odio tortor. Nam tempor porttitor lectus, id varius magna. Quisque ut arcu sit amet metus egestas imperdiet.",
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              Divider(color: Colors.white38),
              Donut(Colors.white),
              Spacer()
            ],
          )
      ),
    );
  }
}