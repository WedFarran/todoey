import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/task_model.dart';

class TaskProvider extends ChangeNotifier {
  final List<TaskModel> _tasksWidgets = [
    TaskModel(taskTitle: 'Buy milk'),
    TaskModel(taskTitle: 'Buy eggs'),
    TaskModel(taskTitle: 'Buy brea')
  ];

  UnmodifiableListView<TaskModel> get tasks {
    return UnmodifiableListView(_tasksWidgets);
  }

  int get tasksCount {
    return _tasksWidgets.length;
  }

  void addTask(String newTaskTitle) {
    print('111111111111111111111111111111');
    final task = TaskModel(taskTitle: newTaskTitle);
    print('2222222222222222222222222222222222222222');
    _tasksWidgets.add(task);
    print('333333333333333333333333333333333333');
    notifyListeners();
  }

  void updateTask(TaskModel task) {
    task.toggleDone();
    notifyListeners();
  }

  deleteTask(TaskModel task) {
    _tasksWidgets.remove(task);
    notifyListeners();
  }
}
