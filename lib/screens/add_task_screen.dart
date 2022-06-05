// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

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
            onPressed: () {},
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
