// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text;
  final Color color;

  const Button(this.text, this.color,{Key? key}) : super(key: key);



  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Color _background = Colors.transparent;
  Color _textColor = Colors.white;

  void clicked() {
    setState(() {
      _background = widget.color;
      _textColor = Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 400.0,
      margin: const EdgeInsets.only(top:5.0,bottom:5.0,left:40.0,right:40.0),
      //padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              fixedSize: const Size(50,200),
              primary: _textColor,
              side: BorderSide(
                  color: widget.color,
                  width: 2.0
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)
              ),
              backgroundColor: _background
          ),
          onPressed: () {
            clicked();
          },
          child: Text(widget.text)
      ),
    );
  }
}
