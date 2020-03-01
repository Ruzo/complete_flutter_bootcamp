import 'package:bmi_calc/utils/bmi_calc.dart';
// import 'package:bmi_calc/utils/constants.dart';
import 'package:bmi_calc/screens/results_screen.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final BMI bmi;

  const Results({Key key, this.bmi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ResultScreen(
          bmi: bmi.bmi,
          healthStatus: bmi.healthStatus['message'],
          statusColor: bmi.healthStatus['color'],
        ),
      ),
    );
  }
}
