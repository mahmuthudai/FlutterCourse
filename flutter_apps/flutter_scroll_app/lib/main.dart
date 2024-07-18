import 'package:flutter/material.dart';
import 'package:flutter_scroll_app/list_view_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListViewExample(),
    );
  }
}
