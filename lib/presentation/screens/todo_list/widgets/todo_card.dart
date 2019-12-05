import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  TodoCard({
    @required this.text,
    @required this.color
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) => Card(
    color: this.color,
    child: InkWell(
      splashColor: Colors.orange,
      onTap: () => ('Card'),
      child: Padding(
        padding: EdgeInsets.all(21.0),
        child: Text(this.text),
      ),
    ),
  );
}
