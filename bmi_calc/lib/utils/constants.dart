import 'package:flutter/material.dart';

enum Gender { male, female }

//Colors
const kCardColor = Color(0xFF607D8B);
const kSelectedCardColor = Color(0xFF75AA75);
const kSliderActiveColor = Color(0xFFCFD8DC);
const kSliderInactiveColor = Color(0xFF455A64);
const kButtonColor = Color(0xFF75AA75);

//Text styles
const kLabelStyle = TextStyle(fontSize: 12);
const kDataStyle = TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900);
const kHeadlineStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
const kBMIStyle = TextStyle(fontSize: 100.0, fontWeight: FontWeight.w900);
const kHealthStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.italic,
);

//Icons
const kGenderIconSize = 60.0;

//BMI results
const List<Map<String, dynamic>> kHealthConditions = [
  {'message': 'Very severely underweight!', 'color': Color(0xFFB71C1C)},
  {'message': 'Severely underweight!', 'color': Color(0xFFD32F2F)},
  {'message': 'Underweight!', 'color': Colors.red},
  {'message': 'Normal, healthy weight!', 'color': Colors.green},
  {'message': 'Overweight!', 'color': Colors.red},
  {'message': 'Moderately obese!', 'color': Color(0xFFD32F2F)},
  {'message': 'Severely obese!', 'color': Color(0xFFC62828)},
  {'message': 'Very severely obese!', 'color': Color(0xFFB71C1C)}
];
