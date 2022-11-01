// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

import '../data/database_helper.dart';

class HighScoreCard extends StatefulWidget {
  final String date;
  final String player;
  final int score;
  final int id;

  const HighScoreCard(this.date,this.player,this.score,this.id,{Key? key}) : super(key: key);



  @override
  State<HighScoreCard> createState() => _HighScoreCardState();
}

class _HighScoreCardState extends State<HighScoreCard> {

  void clicked() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 100,
      color: const Color(0xFF333333),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Row(
          children: [
            Text("\n ${formatDate(DateTime.tryParse(widget.date)!,[yyyy,'-', mm, '-',dd])} ${widget.player} ${widget.score}",
              style: const TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 15),
            ),
            IconButton(
              onPressed: () {
                DatabaseHelper.instance.delete(widget.id);
                setState(() {});
              },
              icon: const Icon(Icons.delete),
              color: Colors.red
            )
          ],
        )
      )
    );
  }
}