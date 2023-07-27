import 'package:flutter/material.dart';
import '../widgets/tasks_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}

// children: <Widget>[
// TaskTile(taskTitle:tasks[0].name, isChecked: tasks[0].isDone),
// TaskTile(taskTitle:tasks[1].name, isChecked: tasks[1].isDone),
// TaskTile(taskTitle:tasks[2].name, isChecked: tasks[2].isDone),
