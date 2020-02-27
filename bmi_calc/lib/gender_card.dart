import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final int gender;
  final String genderLabel;
  final Function handleTap;

  GenderCard(
      {@required this.icon, this.gender, this.genderLabel, this.handleTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: FaIcon(
              icon,
              size: kGenderIconSize,
            ),
          ),
          Text(
            genderLabel,
            style: kLabelStyle,
          ),
        ],
      ),
      onTap: () => handleTap(gender),
      behavior: HitTestBehavior.opaque,
    );
  }
}
