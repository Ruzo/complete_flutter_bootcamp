import 'package:flutter/material.dart';
import 'package:quizzler/questions.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];
  Questions questions;
  int questionsTotal;
  int currentQuestion = 0;
  bool endOfGame = false;

  Icon _winIcon = Icon(Icons.check, color: Colors.green, key: Key('right'));
  Icon _lostIcon = Icon(Icons.close, color: Colors.red, key: Key('wrong'));

  @override
  void initState() {
    questions = Questions();
    questionsTotal = questions.question.length - 1;
    super.initState();
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
              child: endOfGame
                  ? endMessage()
                  : questions.question[currentQuestion].item1,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: endOfGame ? null : () => answered(true),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: endOfGame ? null : () => answered(false),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: scoreKeeper,
          ),
        )
      ],
    );
  }

  void answered(bool answer) {
    setState(() {
      answer == questions.question[currentQuestion].item2
          ? scoreKeeper.add(_winIcon)
          : scoreKeeper.add(_lostIcon);
      currentQuestion < questionsTotal ? currentQuestion++ : endOfGame = true;
    });
  }

  Widget endMessage() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'GAME OVER!\n',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text:
                  'Right: ${scoreKeeper.where((s) => s == _winIcon).length}  ',
            ),
            TextSpan(
              text: 'Wrong: ${scoreKeeper.where((s) => s == _lostIcon).length}',
            ),
          ]),
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
