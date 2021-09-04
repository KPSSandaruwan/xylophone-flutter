import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String note}) {
    return Expanded(
        child: TextButton (
          style: TextButton.styleFrom (
              backgroundColor: color
          ),
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text(
              note,
            style: TextStyle(
              color: Colors.black
            ),
          ),
        )
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
              buildKey(color: Colors.red, soundNumber: 1, note: 'Note 1'),
              buildKey(color: Colors.orangeAccent, soundNumber: 2, note: 'Note 2'),
              buildKey(color: Colors.yellowAccent, soundNumber: 3, note: 'Note 3'),
              buildKey(color: Colors.green, soundNumber: 4, note: 'Note 4'),
              buildKey(color: Colors.teal, soundNumber: 5, note: 'Note 5'),
              buildKey(color: Colors.blueAccent, soundNumber: 6, note: 'Note 6'),
              buildKey(color: Colors.deepPurple, soundNumber: 7, note: 'Note 7'),
            ],
          ),
        ),
      ),
    );
  }
}
