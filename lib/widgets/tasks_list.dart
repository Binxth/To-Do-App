// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/model/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, child) {
        return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return TaskTile(taskData.taskList[index].taskName,
                  taskData.taskList[index].taskStatus
                  // (bool? value) {
                  //   setState(() {
                  //     Provider.of<TaskData>(context, listen: false)
                  //         .taskList[index]
                  //         .updateTaskStatus();
                  //   });
                  // },
                  );
            },
            itemCount: taskData.taskLength);
      },
    );
  }
}
