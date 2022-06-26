import 'dart:collection';

import 'package:flutter/material.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _taskList = [
    Task(taskName: "Hello"),
    Task(taskName: "Need to get coffee"),
    Task(taskName: "Random task"),
    Task(taskName: "one more"),
    Task(taskName: "Another more"),
  ];

  int get taskLength {
    return _taskList.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_taskList);
  }

  void addNewTask(String? taskName) {
    _taskList.add(Task(taskName: taskName ?? ""));
    notifyListeners();
  }

  void toggleCheckBox(Task task) {
    task.updateTaskStatus();
    notifyListeners();
  }
}
