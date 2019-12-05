import 'package:flutter/material.dart';

class AddForm extends StatefulWidget {
  AddForm({Key key}) : super(key: key);

  @override
  _AddForm createState() => _AddForm();
}

class _AddForm extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => Form(
    key: _formKey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
            hintText: 'What do you want to accomplish?',
            labelText: 'Label',
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
        RaisedButton(
          child: Text('Add Todo'),
          onPressed: () {
            if (_formKey.currentState.validate()) {
              print('processing');
            }
          },
        ),
      ],
    ),
  );
}
