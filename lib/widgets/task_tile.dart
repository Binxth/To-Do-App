import 'package:flutter/material.dart';

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
