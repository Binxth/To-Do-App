// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 30.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.list),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height: 10.0),
                    Text('Todoey',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold)),
                    // SizedBox(height: 10.0),
                    Text('12 Tasks',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        )),
                  ]),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: TaskList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

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

class TaskTile extends StatelessWidget {
  const TaskTile({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(text),
      value: false,
      onChanged: (value) {},
    );
  }
}
