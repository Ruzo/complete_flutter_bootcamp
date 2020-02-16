import 'package:flutter/material.dart';
import 'package:xylophone/bars.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: SafeArea(child: Bars()),
    );
  }
}
