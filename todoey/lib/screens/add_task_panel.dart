import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/data/task.dart';
import 'package:todoey/data/tasks_list_api.dart';

class AddTaskPanel extends StatelessWidget {
  final TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        padding: const EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'Add Task',
                style: TextStyle(
                  color: kAccentColor,
                  fontSize: 30,
                ),
              ),
            ),
            TextField(
              controller: textFieldController,
              decoration: const InputDecoration(
                focusColor: kAccentColor,
                hoverColor: kAccentColor,
              ),
              style: const TextStyle(
                color: Colors.black87,
              ),
              cursorColor: kAccentColor,
              textCapitalization: TextCapitalization.sentences,
              autofocus: true,
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Consumer<TasksListApi>(
              builder: (context, tasksListApi, child) => TextButton(
                onPressed: () {
                  final String name = textFieldController.text;
                  textFieldController.clear();
                  tasksListApi.addTask(Task(name: name));
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => kAccentColor),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
