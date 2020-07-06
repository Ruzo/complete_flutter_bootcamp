import 'package:flutter/material.dart';

class StyledTextField extends StatelessWidget {
  final Function handleOnChanged;
  final String hintText;
  final Color color;
  final TextInputType keyboardType;
  final bool hideText;

  StyledTextField({
    @required this.handleOnChanged,
    this.hintText = '',
    @required this.color,
    this.keyboardType = TextInputType.text,
    this.hideText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => handleOnChanged(value),
      keyboardType: keyboardType,
      obscureText: hideText,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
