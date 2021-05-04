import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: TextButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
          onPressed: () {
            playSound(soundNumber);
          }),
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
              buildKey(soundNumber: 1, color: Colors.orange),
              buildKey(soundNumber: 2, color: Colors.yellow),
              buildKey(soundNumber: 3, color: Colors.lightGreen),
              buildKey(soundNumber: 4, color: Colors.green),
              buildKey(soundNumber: 5, color: Colors.blue),
              buildKey(soundNumber: 6, color: Colors.purple),
              buildKey(soundNumber: 7, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
