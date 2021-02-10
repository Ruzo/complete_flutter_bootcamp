import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Function handlePressed;
  final Color color;
  final String text;
  final Color textColor;

  const MainButton(
      {@required this.color, @required this.text, @required this.handlePressed, this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () => handlePressed(),
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
