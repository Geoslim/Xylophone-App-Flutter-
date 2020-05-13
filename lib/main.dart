import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // or as a local variable

    void playSound(int number) {
      final player = AudioCache();
      player.play('note$number.wav');
    }

    dynamic buildKey(int number, String title, dynamic color) {
      return Expanded(
        child: FlatButton(
          color: color,
          child: Text(
            "$title",
            style: TextStyle(fontSize: 20.0),
          ),
          splashColor: Colors.white,
          onPressed: () {
            playSound(number);
          },
        ),
      );
    }

// call this method when desired

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, "First Sound", Colors.tealAccent),
              buildKey(2, "Second Sound", Colors.greenAccent),
              buildKey(3, "Third Sound", Colors.lightGreenAccent),
              buildKey(4, "Fourth Sound", Colors.limeAccent),
              buildKey(5, "Fifth Sound", Colors.yellow),
              buildKey(6, "Sixth Sound", Colors.amberAccent),
              buildKey(7, "Seventh Sound", Colors.orangeAccent),
//
            ],
          ),
        ),
      ),
    );
  }
}
