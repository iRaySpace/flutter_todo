import 'package:flutter/material.dart';

class ColorDropdown extends StatelessWidget {
  ColorDropdown({
    @required this.value,
    @required this.onChanged,
    this.decoration,
  });

  final int value;
  final Function(int) onChanged;
  final InputDecoration decoration;

  @override
  Widget build(BuildContext context) => DropdownButtonFormField<int>(
    value: this.value,
    decoration: this.decoration,
    onChanged: this.onChanged,
    items: <DropdownMenuItem<int>>[
      DropdownMenuItem(
        value: Colors.white.value,
        child: Text('White'),
      ),
      DropdownMenuItem(
        value: Colors.blue.value,
        child: Text('Blue'),
      ),
      DropdownMenuItem(
        value: Colors.pink.value,
        child: Text('Pink'),
      ),
    ],
  );
}
