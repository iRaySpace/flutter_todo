import 'package:flutter/material.dart';
import 'widgets/todo_card.dart';


class TodoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Todo List'),
      centerTitle: true,
    ),
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
