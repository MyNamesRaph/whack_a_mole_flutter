// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

class Donut extends StatefulWidget {
  final Color color;

  const Donut(this.color,{Key? key}) : super(key: key);



  @override
  State<Donut> createState() => _DonutState();
}

class _DonutState extends State<Donut> {

  void clicked() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 160,
      decoration: ShapeDecoration(
          shape: CircleBorder(
              side: BorderSide(
                  color: widget.color,
                  width: 30
              )
          )
      ),
    );
  }
}
