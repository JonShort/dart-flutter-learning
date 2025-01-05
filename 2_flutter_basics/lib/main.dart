import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/widget_examples/widget_examples_screen.dart';

void main() {
  runApp(const MyApp());
}

// "Everything is a widget"

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.amber)),
      // Scaffold is a basic layout
      home: const WidgetExamplesScreen(),
    );
  }
}
