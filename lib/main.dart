import 'package:flutter/material.dart';
import 'app.dart';
import 'locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  registerLocator();
  runApp(App());
}
