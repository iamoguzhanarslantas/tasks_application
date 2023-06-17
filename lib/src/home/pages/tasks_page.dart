import 'package:flutter/material.dart';

class TasksPage extends StatelessWidget {
  static const routeName = '/tasks';
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Tasks Page',
      ),
    );
  }
}
