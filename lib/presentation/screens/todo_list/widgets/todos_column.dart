import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo/presentation/providers/todo_provider.dart';

import 'todo_card.dart';

class TodosColumn extends StatelessWidget {
  List<Widget> _widgetify(List todoList) {
    return todoList.map((todo) =>
        TodoCard(
          text: todo,
          color: Colors.white,
        )
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodoProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _widgetify(provider.todoList),
    );
  }
}