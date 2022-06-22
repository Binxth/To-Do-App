class Task {
  final String taskName;
  bool taskStatus;

  Task({required this.taskName, this.taskStatus = false});

  void updateTaskStatus() {
    taskStatus = !taskStatus;
  }
}
