import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_provider.dart';
import 'package:todoey/screens/add_tasks_screen.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(const Todoey());
}

class Todoey extends StatelessWidget {
  const Todoey({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => TaskProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: TasksScreen.id,
        routes: {
          TasksScreen.id: (context) => const TasksScreen(),
          AddTaskScreen.id: (context) => const AddTaskScreen()
        },
      ),
    );
  }
}
