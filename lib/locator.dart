import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_todo/core/repositories/todo.dart';
import 'package:flutter_todo/presentation/providers/todo_provider.dart';

void registerLocator() async {
  GetIt.I.registerSingleton<TodoProvider>(TodoProvider());

  final sharedPreferences = await SharedPreferences.getInstance();
  GetIt.I.registerSingleton<TodoRepository>(TodoRepository(
    sharedPreferences: sharedPreferences
  ));
}
