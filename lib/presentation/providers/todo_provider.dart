import 'package:flutter/material.dart';
import 'package:flutter_todo/core/models/todo.dart';

class TodoProvider with ChangeNotifier {
  final List<TodoModel> _todoList = [];

  List<TodoModel> get todoList => _todoList;

  void addTodo(TodoModel todo) {
    _todoList.add(todo);
    notifyListeners();
  }

}
