import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // Create takes the widget's context, and returns the object that needs to be provided to the widgets in the tree.
      // By doing this, i can now read the data within TaskData() from the widgets below this MyApp class.
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
