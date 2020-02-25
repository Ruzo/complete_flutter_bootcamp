import 'package:bmi_calc/input_view.dart';
import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  const AppView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: InputView(),
    );
  }
}
