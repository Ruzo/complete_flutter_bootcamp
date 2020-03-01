import 'package:bmi_calc/utils/constants.dart';
import 'package:flutter/material.dart';

class InputContainer extends StatelessWidget {
  final Widget child;
  final bool selected;

  const InputContainer({this.child, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: selected ? kSelectedCardColor : kCardColor,
      ),
      child: child,
    );
  }
}
