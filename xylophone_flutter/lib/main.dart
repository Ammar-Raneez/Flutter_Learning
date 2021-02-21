import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String note) {
    final player = AudioCache();
    player.play(note);
  }

  Expanded buildKey(String note, MaterialColor materialColor) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(note);
        },
        color: materialColor,
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey("note1.wav", Colors.red),
              buildKey("note2.wav", Colors.orange),
              buildKey("note3.wav", Colors.yellow),
              buildKey("note4.wav", Colors.green),
              buildKey("note5.wav", Colors.blue),
              buildKey("note6.wav", Colors.indigo),
              buildKey("note7.wav", Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
