// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool checkBoxState;

  TaskTile(
    this.taskName,
    this.checkBoxState,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: checkBoxState ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkBoxState,
        // onChanged: onChanged,
      ),
    );
  }
}
