import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Dynamic way of creating TaskTiles
    // Also only rebuilds items that are on screen. More efficient this way.
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                // Use widget here to get a reference to the tasks.
                // Gets the data from the provider from the file task_data.dart
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
//                taskTitle: Provider.of<TaskData>(context).tasks[index].name,
//                isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
                checkBoxCallBack: (checkBoxState) {
//              setState(() {
//                widget.tasks[index].toggleDone();
//              });
                  taskData.updateTask(taskData.tasks[index]);
                });
          },
          // Tells how many items I want to display
          itemCount: Provider.of<TaskData>(context).tasks.length,
        );
      },
    );
  }
}
