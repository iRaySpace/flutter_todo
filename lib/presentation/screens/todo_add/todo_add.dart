import 'package:flutter/material.dart';


class TodoAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Todo Add'),
      centerTitle: true,
    ),
    body: Container(
      child: Text('Add new todo')
    ),
  );
}
