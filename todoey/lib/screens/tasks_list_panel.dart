import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tiles_list.dart';

class TasksListPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
        child: TaskTilesList(),
      ),
    );
  }
}
