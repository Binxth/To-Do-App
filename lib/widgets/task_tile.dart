// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool checkBoxState;
  final Function(bool?) onChanged;

  TaskTile(this.taskName, this.checkBoxState, this.onChanged);

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
        onChanged: onChanged,
      ),
    );
  }
}
