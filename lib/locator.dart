import 'package:get_it/get_it.dart';
import 'package:flutter_todo/presentation/providers/todo_provider.dart';

void registerLocator() {
  GetIt.I
      ..registerSingleton<TodoProvider>(TodoProvider());
}
