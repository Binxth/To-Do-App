// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          text: 'This is a task',
        ),
        TaskTile(
          text: 'This is a task',
        ),
        TaskTile(
          text: 'This is a task',
        ),
      ],
    );
  }
}
