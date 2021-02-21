import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//class DicePage extends StatelessWidget {
//  int leftDice = 4;
//  int rightDice = 3;
//
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Row(
//        children: <Widget>[
//          Expanded(
//            child: FlatButton(
//              onPressed: (){
//                Image.asset("images/dice$leftDice.png");
//              },
//              child: Image.asset("images/dice1.png"),
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              onPressed: (){
//                Image.asset("images/dice$rightDice.png");
//              },
//              child: Image.asset("images/dice1.png"),
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("images/dice$leftDice.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("images/dice$rightDice.png"),
            ),
          )
        ],
      ),
    );
  }
}
