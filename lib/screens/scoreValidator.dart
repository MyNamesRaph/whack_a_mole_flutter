import 'package:flutter/material.dart';

import '../components/button.dart';

class ScoreValidator extends StatelessWidget {
  const ScoreValidator({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Score Validator',
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
              const Spacer(flex:1),
              const Image(
                image: AssetImage("assets/images/validate.png"),
                height: 120,
              ),
              const Text("SCORE VALIDATOR",
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
                        const Text("DATE:",
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
                              ),
                              hintText: "    DD/MM/YYYY",
                              hintStyle: TextStyle(
                                color: Color(0xFF58D1FF),
                                fontSize: 20
                              )
                            ),
                          ),
                        ),
                        const Spacer()
                      ],
                    ),
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
                          ),
                        ),
                        const Spacer()
                      ],
                    ),
                    const Text("\n"),
                    const Button("VALIDATE SCORE", Color(0xFF58D1FF)),
                    const Divider(color: Colors.white38),
                    const Text("Score exist: ",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 20),
                    ),
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