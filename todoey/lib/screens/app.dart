import 'package:flutter/material.dart';
import 'package:todoey/screens/header.dart';
import 'package:todoey/screens/tasks_list_panel.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF63C9FE),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              TasksListPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
