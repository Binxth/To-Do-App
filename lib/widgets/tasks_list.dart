// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/model/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, child) {
        return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              final task = taskData.tasks[index];
              return TaskTile(
                task.taskName,
                task.taskStatus,
                (bool? value) {
                  taskData.toggleCheckBox(task);
                },
              );
            },
            itemCount: taskData.taskLength);
      },
    );
  }
}
