import 'package:meta/meta.dart';

class TodoModel {
  String label;
  int color;

  TodoModel({
    @required this.label,
    @required this.color,
  });

  Map<String, dynamic> toJson() {
    return {
      'label': this.label,
      'color': this.color,
    };
  }

  factory TodoModel.fromJson(Map<String, dynamic> parsedJson) {
    return TodoModel(
      label: parsedJson['label'],
      color: parsedJson['color']
    );
  }
}
