import 'package:flutter/material.dart';
import 'package:flutter_inputs/counter_widget.dart';

class GlobalKeyUsage extends StatelessWidget {
  GlobalKeyUsage({super.key});
  final counterWidgetKey = GlobalKey<CounterWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Global Key Kullanımı'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Butona Basılma Miktarı'),
            CounterWidget(
              key: counterWidgetKey,
            ),
            Text(counterWidgetKey.currentState?.counter.toString() ?? '0')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterWidgetKey.currentState!.count();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
