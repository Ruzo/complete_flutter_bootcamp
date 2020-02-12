import 'package:flutter/material.dart';
import 'package:magic_8_ball/eight_ball.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EightBall(),
    );
  }
}
