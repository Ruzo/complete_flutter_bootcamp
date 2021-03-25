import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/data/tasks_list_api.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskTilesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksListApi>(builder: (context, tasksListApi, child) {
      final tasksList = tasksListApi.tasksList;
      return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) => TaskTile(
          task: tasksList[index],
        ),
      );
    });
  }
}
