import 'package:flutter/foundation.dart';
import 'package:todoey/data/task.dart';

class TasksListApi extends ChangeNotifier {
  final List<Task> _tasksList = [Task(name: 'Add my first task')];

  List<Task> get tasksList => _tasksList;

  void updateTask(Task task, {bool? done}) {
    task.done = done;
    notifyListeners();
  }

  void addTask(Task task) {
    _tasksList.add(task);
    notifyListeners();
  }
}
