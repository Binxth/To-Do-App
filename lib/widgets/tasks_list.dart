// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> taskList = [
    Task(taskName: "Hello"),
    Task(taskName: "Need to get coffee"),
    Task(taskName: "Random task"),
    Task(taskName: "one more")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return TaskTile(taskList[index].taskName, taskList[index].taskStatus,
              (bool? value) {
            setState(() {
              taskList[index].updateTaskStatus();
            });
          });
        },
        itemCount: taskList.length);
  }
}
