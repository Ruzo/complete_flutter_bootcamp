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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/mister_d.jpg'),
                radius: 50.0,
              ),
              spacer(height: 10),
              Text(
                'Mister D',
                style: TextStyle(
                  fontFamily: 'Monoton-Regular',
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                'Scratch Developper',
                style: TextStyle(
                  fontFamily: 'Orbitron-VariableFont_wght',
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[100],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
                padding: EdgeInsets.all(8),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.orangeAccent,
                    ),
                    spacer(width: 20),
                    Text(
                      '+1-001-555-463-1290',
                      style: TextStyle(
                        color: Colors.orangeAccent[700],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 5, 50, 20),
                padding: EdgeInsets.all(8),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.orangeAccent,
                    ),
                    spacer(width: 20),
                    Text(
                      'coolcodhilloner@gmail.com',
                      style: TextStyle(
                        color: Colors.orangeAccent[700],
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
