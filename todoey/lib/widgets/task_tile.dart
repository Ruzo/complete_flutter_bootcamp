import 'package:flutter/material.dart';
import 'package:todoey/data/task.dart';

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
      onChanged: (_) {},
    );
  }
}
