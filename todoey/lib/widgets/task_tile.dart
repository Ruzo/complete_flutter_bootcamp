import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/data/task.dart';
import 'package:todoey/data/tasks_list_api.dart';

class TaskTile extends StatelessWidget {
  final Task task;

  const TaskTile({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        task.name,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 20,
          decoration: task.done ? TextDecoration.lineThrough : null,
        ),
      ),
      value: task.done,
      onChanged: (isDone) {
        context.read<TasksListApi>().updateTask(task, done: isDone);
      },
    );
  }
}
