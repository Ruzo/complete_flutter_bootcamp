import 'package:flutter/material.dart';
import 'package:dicee_flutter/dice_screen.dart';

class GameBoard extends StatefulWidget {
  @override
  _GameBoardState createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  int dice1Side = 1;
  int dice2Side = 2;
  int p1Score = 0;
  int p2Score = 0;

  TextStyle playerStyle = TextStyle(
    color: Color(0xFFF3C620),
    fontFamily: 'Gugi',
    fontSize: 30.0,
  );
  TextStyle scoreStyle = TextStyle(
    color: Colors.amber[800],
    fontFamily: 'OleoScriptSwashCaps',
    fontSize: 30.0,
  );
  TextStyle buttonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 40.0,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                player('PLAYER1', p1Score),
                player('PLAYER2', p2Score),
              ]),
        ),
        MaterialButton(
          color: Colors.red,
          textColor: Colors.white,
          autofocus: true,
          onPressed: () => rollDice(),
          child: Column(
            children: <Widget>[
              Text(
                'ROLL',
                style: buttonTextStyle,
              ),
              Text(
                'DICE',
                style: buttonTextStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Dice(dice1Side, dice2Side),
        ),
      ],
    );
  }

  Widget player(String player, int score) {
    return Column(
      children: <Widget>[
        Text(
          player,
          style: playerStyle,
        ),
        Text(
          score.toString(),
          style: scoreStyle,
        ),
      ],
    );
  }

  rollDice() {}
}
