import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'package:flutter_todo/core/repositories/todo.dart';
import 'package:flutter_todo/presentation/providers/todo_provider.dart';
import 'package:flutter_todo/presentation/screens/todo_add/todo_add.dart';
import 'package:flutter_todo/presentation/screens/todo_list/widgets/todos_column.dart';

class TodoListScreen extends StatelessWidget {
  final _repository = GetIt.I<TodoRepository>();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoProvider>(
      create: (_) => GetIt.I<TodoProvider>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Todo List'),
          centerTitle: true,
          actions: <Widget>[
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.save),
                onPressed: () async {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text('Saving'))
                  );
                  await this._repository.saveTodos('test');
                  Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text('Saved'))
                  );
                },
              ),
            ),
          ],
        ),
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
