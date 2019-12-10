import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_todo/core/repositories/todo.dart';
import 'package:flutter_todo/presentation/providers/todo_provider.dart';

class TodoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TodoRepository repository;

  TodoAppBar({this.repository});

  @override
  Size get preferredSize {
    return Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodoProvider>(context);
    return AppBar(
      title: Text('Todo List'),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.save),
          onPressed: () async {
            await this.repository.saveTodos(provider.encodeToJson());
            Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('Saved'))
            );
          },
        ),
      ],
    );
  }
}