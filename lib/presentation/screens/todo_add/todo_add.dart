import 'package:flutter/material.dart';
import 'widgets/add_form.dart';

class TodoAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Todo Add'),
      centerTitle: true,
    ),
    body: AddForm(),
  );
}
