import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;

  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        // if isChecked is true, add a lineThrough, else make the text decoration null.
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
