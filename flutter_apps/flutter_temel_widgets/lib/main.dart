import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/popupmenu_example.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('myapp build çalıştı');
    return MaterialApp(
      title: 'My Counter Page',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
            fontSize: 100,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Button Example"),
          actions: const [PopupmenuExample()],
        ),
        body: const PopupmenuExample(),
      ),
    );
  }
}
