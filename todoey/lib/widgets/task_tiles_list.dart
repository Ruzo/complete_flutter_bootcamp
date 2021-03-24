import 'package:flutter/material.dart';
import 'package:todoey/data/task.dart';
import 'package:todoey/data/tasks_list_api.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskTilesList extends StatelessWidget {
  final List<Task> tasksList = TasksListApi().tasksList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasksList.length,
      itemBuilder: (context, index) => TaskTile(task: tasksList[index]),
    );
  }
}
