import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataInputCard extends StatelessWidget {
  final String label;
  final int data;

  DataInputCard({this.label = '', this.data});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // MaterialButton(
            //   child: FaIcon(FontAwesomeIcons.minus),
            //   onPressed: () => {},
            // ),
            // MaterialButton(
            //   child: FaIcon(FontAwesomeIcons.plus),
            //   onPressed: () => {},
            // ),
          ],
        )
      ],
    );
  }
}
