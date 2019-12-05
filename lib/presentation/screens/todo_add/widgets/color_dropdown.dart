import 'package:flutter/material.dart';

class ColorDropdown extends StatelessWidget {
  ColorDropdown({
    @required this.value,
    this.decoration,
  });

  final int value;
  final InputDecoration decoration;

  @override
  Widget build(BuildContext context) => DropdownButtonFormField(
    value: this.value,
    decoration: this.decoration,
    items: <DropdownMenuItem>[
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
