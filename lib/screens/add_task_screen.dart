// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String? newTask;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
      child: SizedBox(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.lightBlueAccent),
          ),
          TextField(
            onChanged: ((value) {
              newTask = value;
            }),
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                // hintText: 'enter tasks',
                ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: (() {
              Provider.of<TaskData>(context, listen: false).addNewTask(newTask);
              Navigator.pop(context);
            }),
            style: TextButton.styleFrom(
              primary: Colors.blue,
              backgroundColor: Colors.lightBlueAccent, // Background Color
            ),
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
