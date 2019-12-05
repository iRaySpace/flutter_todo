import 'package:flutter/material.dart';
import 'package:flutter_todo/core/models/todo.dart';
import 'color_dropdown.dart';

class AddForm extends StatefulWidget {
  AddForm({
    Key key,
    @required this.onAdd,
  }) : super(key: key);

  final Function(TodoModel) onAdd;

  @override
  _AddForm createState() => _AddForm();
}

class _AddFormData {
  String label = '';
  int color = Colors.white.value;

  String validateLabel(String label) {
    return label.isEmpty ? 'Label is required' : null;
  }

  void saveLabel(String label) {
    this.label = label;
  }

  void onColorChange(int color) {
    this.color = color;
  }
}

class _AddForm extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  final _AddFormData _data = _AddFormData();

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
          validator: _data.validateLabel,
          onSaved: _data.saveLabel,
        ),
        ColorDropdown(
          value: _data.color,
          onChanged: (value) => setState(() => this._data.onColorChange(value)),
          decoration: InputDecoration(labelText: 'Label Color'),
        ),
        RaisedButton(
          child: Text('Add Todo'),
          onPressed: () {
            if (_formKey.currentState.validate()) {
              _formKey.currentState.save();
              widget.onAdd(
                TodoModel(
                  label: _data.label,
                  color: _data.color,
                )
              );
            }
          },
        ),
      ],
    ),
  );
}
