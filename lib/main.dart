import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

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
            mainAxisSize: MainAxisSize.max,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.lightGreen, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.blueAccent, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildKey(Color color, int soundNum) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playAudio(soundNum);
        },
      ),
    );
  }

  void playAudio(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }
}
