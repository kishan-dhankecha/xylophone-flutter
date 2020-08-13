import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buttonStyle({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {playSound(soundNumber);},
        child: Text('Note $soundNumber'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttonStyle(color: Colors.red, soundNumber: 1),
              buttonStyle(color: Colors.orange, soundNumber: 2),
              buttonStyle(color: Colors.yellow, soundNumber: 3),
              buttonStyle(color: Colors.green, soundNumber: 4),
              buttonStyle(color: Colors.teal, soundNumber: 5),
              buttonStyle(color: Colors.blue, soundNumber: 6),
              buttonStyle(color: Colors.purple, soundNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
