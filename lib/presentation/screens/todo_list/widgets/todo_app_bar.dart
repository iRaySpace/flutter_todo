import 'package:flutter/material.dart';
import 'package:flutter_todo/core/repositories/todo.dart';

class TodoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TodoRepository repository;

  TodoAppBar({this.repository});

  @override
  Size get preferredSize {
    return Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) => AppBar(
    title: Text('Todo List'),
    centerTitle: true,
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.save),
        onPressed: () async {
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text('Saving'))
          );
          this.repository.saveTodos('test');
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text('Saved'))
          );
        },
      ),
    ],
  );
}