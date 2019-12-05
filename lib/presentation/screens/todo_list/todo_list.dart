import 'package:flutter/material.dart';
import 'package:flutter_todo/presentation/screens/todo_add/todo_add.dart';

import 'widgets/todo_card.dart';


class TodoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Todo List'),
      centerTitle: true,
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TodoAddScreen()),
        );
      },
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TodoCard(color: Colors.blue),
            TodoCard(color: Colors.indigo),
            TodoCard(color: Colors.orange),
            TodoCard(color: Colors.lime),
            TodoCard(color: Colors.red),
            TodoCard(color: Colors.lime),
            TodoCard(color: Colors.lime),
            TodoCard(color: Colors.lime),
            TodoCard(color: Colors.lime),
            TodoCard(color: Colors.lime),
            TodoCard(color: Colors.lime),
            TodoCard(color: Colors.lime),
            TodoCard(color: Colors.lime),
            TodoCard(color: Colors.lime),
          ],
        ),
      ),
    ),
  );
}
