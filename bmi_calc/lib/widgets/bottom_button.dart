import 'package:flutter/material.dart';
import 'package:bmi_calc/utils/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
    @required this.enabled,
    @required this.handlePress,
    @required this.label,
    @required this.height,
  }) : super(key: key);

  final String label;
  final bool enabled;
  final double height;
  final Function handlePress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: RawMaterialButton(
        fillColor: enabled ? kButtonColor : kCardColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        constraints:
            BoxConstraints.expand(width: double.maxFinite, height: height),
        onPressed: enabled ? handlePress : null,
        child: Text(label),
        elevation: 0.0,
        disabledElevation: 0.0,
        focusElevation: 0.0,
        highlightElevation: 0.0,
        hoverElevation: 0.0,
      ),
    );
  }
}
