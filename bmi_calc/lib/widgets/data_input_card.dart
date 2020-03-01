import 'package:bmi_calc/utils/constants.dart';
import 'package:bmi_calc/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataInputCard extends StatelessWidget {
  final String label;
  final int data;
  final Function handlePress;

  DataInputCard({this.label = '', this.data, this.handlePress});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: kLabelStyle,
        ),
        Text(
          '$data',
          style: kDataStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RoundButton(
              icon: FaIcon(FontAwesomeIcons.minus),
              handlePress: (int steps) => handlePress(-steps),
            ),
            RoundButton(
              icon: FaIcon(FontAwesomeIcons.plus),
              handlePress: (int steps) => handlePress(steps),
            ),
          ],
        )
      ],
    );
  }
}
