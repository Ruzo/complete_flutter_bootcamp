import 'package:bmi_calc/utils/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class BMI {
  final int weight;
  final double height;

  BMI({
    @required this.height,
    @required this.weight,
  });

  double _bmi(int m, double h) {
    // Proposed new BMI formula
    double _heightInches = height * 12;
    double index = (m / pow(_heightInches, 2)) * 703;
    return double.parse(index.toStringAsFixed(1));
  }

  double get bmi => _bmi(weight, height);

  Map<String, dynamic> _healthStatus(double index) {
    if (index < 15) return kHealthConditions[0];
    if (index >= 15 && index < 16) return kHealthConditions[1];
    if (index >= 16 && index < 18.5) return kHealthConditions[2];
    if (index >= 18.5 && index < 25) return kHealthConditions[3];
    if (index >= 25 && index < 30) return kHealthConditions[4];
    if (index >= 30 && index < 35) return kHealthConditions[5];
    if (index >= 35 && index < 40) return kHealthConditions[6];
    if (index >= 40) return kHealthConditions[7];
    return null;
  }

  Map<String, dynamic> get healthStatus => _healthStatus(bmi);
}
