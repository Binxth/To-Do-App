// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> taskList;

  TaskList(this.taskList);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return TaskTile(widget.taskList[index].taskName,
              widget.taskList[index].taskStatus, (bool? value) {
            setState(() {
              widget.taskList[index].updateTaskStatus();
            });
          });
        },
        itemCount: widget.taskList.length);
  }
}
