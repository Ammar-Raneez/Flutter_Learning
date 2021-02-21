import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String note) {
    final player = AudioCache();
    player.play(note);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound("note1.wav");
                  },
                  color: Colors.red,
                  child: Text(""),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound("note2.wav");
                  },
                  color: Colors.orange,
                  child: Text(""),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound("note3.wav");
                  },
                  color: Colors.yellow,
                  child: Text(""),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound("note4.wav");
                  },
                  color: Colors.blue,
                  child: Text(""),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound("note5.wav");
                  },
                  color: Colors.green,
                  child: Text(""),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound("note6.wav");
                  },
                  color: Colors.indigo,
                  child: Text(""),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound("note7.wav");
                  },
                  color: Colors.purple,
                  child: Text(""),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
