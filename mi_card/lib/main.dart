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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/mister_d.jpg'),
                radius: 100.0,
              ),
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
              SizedBox(
                child: Divider(color: Colors.orange[50]),
                width: 150.0,
              ),
              Card(
                margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.orangeAccent,
                  ),
                  title: Text(
                    '+1-001-555-463-1290',
                    style: TextStyle(
                      color: Colors.orangeAccent[700],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.orangeAccent,
                  ),
                  title: Text(
                    'coolcodhilloner@gmail.com',
                    style: TextStyle(
                      color: Colors.orangeAccent[700],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
