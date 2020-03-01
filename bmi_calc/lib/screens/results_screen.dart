import 'package:bmi_calc/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc/utils/constants.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  final String healthStatus;
  final Color statusColor;

  const ResultScreen(
      {Key key,
      @required this.bmi,
      @required this.healthStatus,
      @required this.statusColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.maxFinite,
              child: Text(
                'Results:',
                style: kHeadlineStyle,
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(text: '$bmi\n', style: kBMIStyle, children: [
              TextSpan(
                text: healthStatus,
                style: kHealthStyle.copyWith(color: statusColor),
              ),
            ]),
          ),
        ),
        BottomButton(
          label: 'RE-CALCULATE',
          enabled: true,
          height: 70.0,
          handlePress: () => handlePress(context),
        ),
      ],
    );
  }

  void handlePress(context) {
    Navigator.pop(context);
  }
}
