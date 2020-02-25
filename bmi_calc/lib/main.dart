import 'package:bmi_calc/app_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff455A64),
        appBarTheme: AppBarTheme(
          color: Color(0xff354A54),
        ),
      ),
      home: AppView(),
    );
  }
}
