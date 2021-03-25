import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 50.0, 0.0, 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35.0,
            child: Icon(
              Icons.list_rounded,
              color: kAccentColor,
              size: 50.0,
            ),
          ),
          Padding(padding: EdgeInsets.all(14.0)),
          Text(
            'Todoey',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 50.0,
            ),
          ),
          Text(
            '12 Tasks',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
