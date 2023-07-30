import 'package:flutter/material.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String? newTaskTitle;

    return Container(
      color: Color.fromRGBO(117, 117, 117, 1),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  'Add Task',
                  style:
                      TextStyle(color: Colors.lightBlueAccent, fontSize: 25.0),
                ),
              ),
              TextField(autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  ),
                ),
                onChanged: (newText) {
                newTaskTitle = newText;
                },
              ),
              Container(
                height: 20.0,
              ),
              Container(
                width: 300.0,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent),
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                    Navigator.pop(context);},
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
