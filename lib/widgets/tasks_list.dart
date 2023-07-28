import 'package:flutter/material.dart';
import '../widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (checkboxState) {
                // setState(() {
                //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                // });
              },
            );
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
