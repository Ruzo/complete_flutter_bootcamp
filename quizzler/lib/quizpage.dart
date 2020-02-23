import 'package:flutter/material.dart';
import 'package:quizzler/quizcont.dart';
import 'package:quizzler/endmessage.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];
  Quiz quiz = Quiz();

  Icon _winIcon = Icon(Icons.check, color: Colors.green);
  Icon _lostIcon = Icon(Icons.close, color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    quiz.endOfGame ? Text('') : quiz.getQuestion(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
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
                  onPressed: () => answered(true),
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
                  onPressed: () => answered(false),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: scoreKeeper,
              ),
            )
          ],
        ),
        quiz.endOfGame ? endOfGameModal() : null,
      ].where((element) => element != null).toList(),
    );
  }

  void answered(bool answer) {
    setState(() {
      quiz.rightAnswer(answer)
          ? scoreKeeper.add(_winIcon)
          : scoreKeeper.add(_lostIcon);
    });
  }

  Widget endOfGameModal() {
    int rightAnswers = scoreKeeper.where((s) => s == _winIcon).length;
    int wrongAnswers = scoreKeeper.where((s) => s == _lostIcon).length;
    EndMessage endMessage = EndMessage(rightAnswers, wrongAnswers, resetGame);
    return endMessage;
  }

  void resetGame() {
    setState(() {
      quiz.reset();
      scoreKeeper.clear();
    });
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
