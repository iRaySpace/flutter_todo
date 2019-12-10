import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'package:flutter_todo/core/repositories/todo.dart';
import 'package:flutter_todo/presentation/providers/todo_provider.dart';
import 'package:flutter_todo/presentation/screens/todo_add/todo_add.dart';
import 'package:flutter_todo/presentation/screens/todo_list/widgets/todos_column.dart';
import 'package:flutter_todo/presentation/screens/todo_list/widgets/todo_app_bar.dart';

class TodoListScreen extends StatelessWidget {
  final repository = GetIt.I<TodoRepository>();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoProvider>(
      create: (_) => GetIt.I<TodoProvider>(),
      child: Scaffold(
        appBar: TodoAppBar(repository: repository),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => TodoAddScreen()),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Container(
          child: SingleChildScrollView(
            child: TodosColumn(),
          ),
        ),
      ),
    );
  }
}
