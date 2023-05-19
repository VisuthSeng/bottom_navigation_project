import 'package:flutter/material.dart';

import 'app.dart';
import 'main_binding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _injectDepencies();

  runApp(
    MyApp(),
  );
}

void _injectDepencies() {
  MainBinding().dependencies();
}
