import 'package:flutter/material.dart';

class DateTimeExample extends StatefulWidget {
  const DateTimeExample({super.key});

  @override
  State<DateTimeExample> createState() => _DateTimeExampleState();
}

class _DateTimeExampleState extends State<DateTimeExample> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime past = DateTime(now.year, now.month - 3);
    DateTime future = DateTime(now.year, now.month, now.day + 20);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Tarih ve Saat'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showDatePicker(
                  context: context, firstDate: past, lastDate: future);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text('Tarih Seç'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text('Saat Seç'),
          ),
        ],
      )),
    );
  }
}
