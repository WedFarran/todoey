import 'package:flutter/material.dart';

class TasksWidgets extends StatelessWidget {
  final String taskTitle;
  final bool checked;
  final Function(bool?)? onChanged;
  const TasksWidgets({
    required this.taskTitle,
    required this.checked,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: checked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(value: checked, onChanged: onChanged),
    );
  }
}
