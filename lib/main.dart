//import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              soundKey(1, Colors.purple),
              soundKey(2, Colors.blue.shade900),
              soundKey(3, Colors.lightBlue),
              soundKey(4, Colors.green),
              soundKey(5, Colors.yellow),
              soundKey(6, Colors.orange),
              soundKey(7, Colors.red),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int toneNum) {
    final player = AudioCache();
    player.play('note$toneNum.wav');
  }

  Expanded soundKey(int toneNum, Color soundKeyColor) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(toneNum);
        },
        color: soundKeyColor,
        child: Text('Click Me!'),
      ),
    );
  }
}
