class TaskModel {
  final String taskTitle;
  bool checked;
  TaskModel({this.checked = false, required this.taskTitle});

  void toggleDone() {
    checked = !checked;
  }
}
