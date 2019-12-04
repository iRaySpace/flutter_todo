import 'package:flutter/material.dart';
import 'package:flutter_todo/presentation/screens/todo_list/todo_list.dart'

// TODO: Create a configuration file
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: "Flutter ToDo",
    theme: ThemeData(primarySwatch: Colors.blue),
    home: TodoListScreen(),
  );
}
