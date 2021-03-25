import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/data/tasks_list_api.dart';
import 'package:todoey/screens/add_task_panel.dart';
import 'package:todoey/screens/header.dart';
import 'package:todoey/screens/tasks_list_panel.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListenableProvider<TasksListApi>(
      create: (context) => TasksListApi(),
      child: MaterialApp(
        home: SafeArea(
          child: Scaffold(
            backgroundColor: const Color(0xFF63C9FE),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                TasksListPanel(),
              ],
            ),
            floatingActionButton: Builder(
              builder: (context) => FloatingActionButton(
                backgroundColor: kAccentColor,
                onPressed: () => showModalBottomSheet<void>(
                  context: context,
                  backgroundColor: const Color(0x00FFFFFF),
                  isScrollControlled: true,
                  isDismissible: true,
                  builder: (context) => AddTaskPanel(),
                ),
                child: const Icon(
                  Icons.add,
                  size: 40.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
