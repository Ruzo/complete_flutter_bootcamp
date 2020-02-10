import 'package:flutter/material.dart';
import 'package:dicee_flutter/dice_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Color mainColor = Colors.green[900];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: mainColor,
        ),
        body: Dice(),
      ),
      color: mainColor,
    );
  }
}
