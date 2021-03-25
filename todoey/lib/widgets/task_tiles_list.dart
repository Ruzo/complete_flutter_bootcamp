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
        itemBuilder: (context, index) => Dismissible(
          background: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.delete),
                Icon(Icons.delete),
              ],
            ),
          ),
          key: Key(index.toString()),
          onDismissed: (_) => tasksListApi.deleteTask(tasksList[index]),
          child: TaskTile(
            task: tasksList[index],
          ),
        ),
      );
    });
  }
}
