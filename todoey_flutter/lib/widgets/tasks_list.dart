import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    // Dynamic way of creating TaskTiles
    // Also only rebuilds items that are on screen. More efficient this way.
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            // Use widget here to get a reference to the tasks.
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkBoxCallBack: (checkBoxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      // Tells how many items I want to display
      itemCount: widget.tasks.length,
    );
  }
}
