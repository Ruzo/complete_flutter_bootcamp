import 'package:flutter/material.dart';
import 'package:magic_8_ball/eight_ball.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic-8-Ball',
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything...')),
        ),
        body: SafeArea(
          child: Center(
            child: EightBall(),
          ),
        ),
      ),
    );
  }
}
