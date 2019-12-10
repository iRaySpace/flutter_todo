import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_todo/core/models/todo.dart';

class TodoRepository {
  SharedPreferences _sharedPreferences;

  setSharedPreferences(sharedPreferences) {
    this._sharedPreferences = sharedPreferences;
  }

  Future<bool> saveTodos(todos) {
    return this._sharedPreferences.setString('todos', todos);
  }

  List<TodoModel> getTodos() {
    final todoJson = this._sharedPreferences.getString('todos');
    final List<dynamic> todoList = json.decode(todoJson);
    return todoList.map((todo) => TodoModel.fromJson(todo)).toList();
  }
}
