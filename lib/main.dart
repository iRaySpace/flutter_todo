import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_todo/core/repositories/todo.dart';
import 'package:flutter_todo/presentation/providers/todo_provider.dart';
import 'app.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Service Locator
  registerLocator();

  // Load the data
  final todoRepository = GetIt.I<TodoRepository>();
  todoRepository.setSharedPreferences(
    await SharedPreferences.getInstance()
  );

  final todoProvider = GetIt.I<TodoProvider>();
  todoProvider.replaceTodos(todoRepository.getTodos());

  runApp(App());
}
