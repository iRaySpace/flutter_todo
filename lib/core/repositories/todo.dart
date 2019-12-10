import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoRepository {
  final SharedPreferences sharedPreferences;

  TodoRepository({@required this.sharedPreferences});
  
  Future<bool> saveTodos(todos) {
    return this.sharedPreferences.setString('todos', todos);
  }

  String getTodos() {
    return this.sharedPreferences.getString('todos');
  }
}
