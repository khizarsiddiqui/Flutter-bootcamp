import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final player = AudioPlayer();
    player.play(AssetSource('note$n.wav'));
  }
  Expanded buildKey({required Color color,required int soundNum}){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNum);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNum: 1),
              buildKey(color: Colors.blue, soundNum: 2),
              buildKey(color: Colors.teal, soundNum: 3),
              buildKey(color: Colors.yellow, soundNum: 4),
              buildKey(color: Colors.orange, soundNum: 5),
              buildKey(color: Colors.purple, soundNum: 6),
              buildKey(color: Colors.green, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}