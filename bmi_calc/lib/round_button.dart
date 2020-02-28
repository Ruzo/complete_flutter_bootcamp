import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';

class RoundButton extends StatelessWidget {
  final FaIcon icon;
  final Function handlePress;

  RoundButton({this.icon, this.handlePress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => handlePress(1),
      onLongPress: () => handlePress(10),
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
      fillColor: kButtonColor,
      shape: CircleBorder(),
      elevation: 0.0,
      hoverElevation: 0.0,
      highlightElevation: 0.0,
      child: icon,
    );
  }
}
