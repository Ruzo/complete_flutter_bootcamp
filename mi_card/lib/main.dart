import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mi_card',
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(60, 40, 60, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/mister_d.jpg'),
                  radius: 50.0,
                ),
                spacer(height: 10),
                Text('Mister D'),
                Text('Scratch Developper'),
                spacer(height: 20),
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      spacer(width: 5),
                      Icon(Icons.phone),
                      spacer(width: 20),
                      Text('+1-001-555-463-1290'),
                    ],
                  ),
                ),
                spacer(height: 10),
                Container(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      spacer(width: 5),
                      Icon(Icons.email),
                      spacer(width: 20),
                      Text('coolcodhilloner@gmail.com'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget spacer({double height, double width = double.maxFinite}) => SizedBox(
        width: width,
        height: height,
      );
}
