import 'package:flutter/material.dart';
import 'dart:math';
import 'package:dicee_flutter/dice_screen.dart';
import 'package:dicee_flutter/player.dart';

class GameBoard extends StatefulWidget {
  @override
  _GameBoardState createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  int _dice1Side = 1;
  int _dice2Side = 2;
  List<Player> _player = [
    Player('PLAYER1'),
    Player('PLAYER2'),
    Player("It's a Tie")
  ];
  int roller = 0;
  bool theEnd = false;
  int winner;

  TextStyle playerStyle = TextStyle(
    color: Color(0xFFF3C620),
    fontFamily: 'Gugi',
    fontSize: 30.0,
  );
  TextStyle buttonPlayerStyle = TextStyle(
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
        // Padding(
        //   padding: EdgeInsets.all(10.0),
        // ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                player(_player[0].name, _player[0].score),
                player(_player[1].name, _player[1].score),
              ]),
        ),
        MaterialButton(
          color: Colors.red,
          padding: EdgeInsets.all(10.0),
          textColor: Colors.white,
          autofocus: true,
          onPressed: theEnd ? null : () => rollDice(roller),
          child: Column(
            children: <Widget>[
              Text(
                theEnd ? 'Game Over' : _player[roller].name,
                style: theEnd ? playerStyle : buttonPlayerStyle,
              ),
              Text(
                theEnd ? 'Winner:' : 'ROLL',
                style: buttonTextStyle,
              ),
              Text(
                theEnd ? _player[winner].name + '!' : 'DICE',
                style: buttonTextStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 8.0),
          child: Dice(_dice1Side, _dice2Side),
        ),
        theEnd ? playAgain() : Container(),
      ],
    );
  }

  Widget player(String player, int score) => Column(
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

  rollDice(int player) {
    Function randomSide = (int prev) {
      int num;
      do {
        num = Random().nextInt(6) + 1;
      } while (num == prev);
      return num;
    };

    int side1 = randomSide(_dice1Side);
    int side2 = randomSide(_dice2Side);
    setState(() {
      _dice1Side = side1;
      _dice2Side = side2;
      _player[player].score = side1 + side2;
      roller++;
      theEnd = roller == 2 ? true : false;
      if (theEnd) {
        int settleScore = _player[0].score - _player[1].score;
        winner = settleScore > 0 ? 0 : settleScore < 0 ? 1 : 2;
      }
    });
  }

  playAgain() {
    return RaisedButton(
      onPressed: () => resetGame(),
      child: Text('Play again...'),
    );
  }

  resetGame() {
    setState(() {
      roller = 0;
      theEnd = false;
      _player.map((p) => p.score = 0).toList();
    });
  }
}
