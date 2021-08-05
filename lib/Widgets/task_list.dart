import 'package:flutter/material.dart';
import 'package:todo_app/Widgets/task_tile.dart';
import 'package:todo_app/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy meat'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkBoxCallBack: (checkBoxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
