import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> task = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy drink'),
    Task(name: 'Buy coke'),
    Task(name: 'Buy soup'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: task.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: task[index].name,
          isChecked: task[index].isDone,
          checkboxCallback: (bool checkboxState) {
            setState(() {
              task[index].toggleDone();
            });
          }
        );
    });
  }
}