import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  final int dice2Side;
  final int dice1Side;

  Dice(this.dice1Side, this.dice2Side);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/dice$dice1Side.png'),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/dice$dice2Side.png'),
          )),
        ],
      ),
    );
  }
}
