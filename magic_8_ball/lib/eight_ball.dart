import 'package:flutter/material.dart';
import 'dart:math';

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int _answer = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Image.asset('images/ball$_answer.png'),
        onPressed: () => getAnswer(),
      ),
    );
  }

  getAnswer() {
    setState(() {
      _answer = Random().nextInt(5) + 1;
    });
  }
}
