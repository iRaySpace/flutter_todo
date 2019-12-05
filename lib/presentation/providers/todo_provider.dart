import 'package:flutter/material.dart';

class TodoProvider with ChangeNotifier {
  final List<String> _todoList = [];

  List<String> get todoList => _todoList;

  void addTodo(String todo) {
    _todoList.add(todo);
    notifyListeners();
  }

}
