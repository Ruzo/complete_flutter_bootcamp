import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class AddTaskPanel extends StatelessWidget {
  final TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
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
              decoration: InputDecoration(
                focusColor: kAccentColor,
                hoverColor: kAccentColor,
              ),
              style: TextStyle(
                color: Colors.black87,
              ),
              cursorColor: kAccentColor,
              textCapitalization: TextCapitalization.sentences,
              autofocus: true,
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextButton(
              onPressed: () {
                print(textFieldController.text);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) => kAccentColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
