import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const LovelyPiano());

class LovelyPiano extends StatelessWidget {
 const LovelyPiano({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child:Image.asset('assets/key.png', fit: BoxFit.cover,), //Image For All Children
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 1),
              buildKey(soundNumber: 2),
              buildKey(soundNumber: 3),
              buildKey(soundNumber: 4),
              buildKey(soundNumber: 5),
              buildKey(soundNumber: 6),
              buildKey(soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }

}
