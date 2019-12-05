import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_todo/presentation/providers/todo_provider.dart';
import 'package:flutter_todo/core/models/todo.dart';
import 'widgets/add_form.dart';

// TODO: abstract from models / screens should not be able to see models
class TodoAddScreen extends StatelessWidget {
  final _provider = GetIt.I<TodoProvider>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Add'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: AddForm(
            onAdd: (String value) {
              _provider.addTodo(
                  TodoModel(
                    label: value,
                    color: Colors.green.value,
                  )
              );
              Navigator.pop(context);
            },
        ),
      ),
    );
  }
}
