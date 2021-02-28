import 'package:flutter/material.dart';
import 'package:quizzler/QuestionBank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());
QuestionBank questionBank = new QuestionBank();

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> _scoreKeeper = [];
  int _totalScore = 0;

  void _checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = questionBank.getQuestionAnswer();

    setState(() {
      if (questionBank.isFinished()) {
        Alert(context: context, title: "Quizzler ", desc: "You scored $_totalScore points").show();
        questionBank.reset();
        this._scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          this._scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
          this._totalScore++;
        } else {
          this._scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        questionBank.canNextQuestion();
      }
    });
  }


  Expanded _userCard(String text, MaterialColor buttonColor, bool cardAnswer) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: FlatButton(
          color: buttonColor,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            _checkAnswer(cardAnswer);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        _userCard('True', Colors.green, true),
        _userCard('False', Colors.red, false),
        Row(
          children: this._scoreKeeper,
        )
      ],
    );
  }
}
