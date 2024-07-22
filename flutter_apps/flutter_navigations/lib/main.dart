import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/blue_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation İşlemleri'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push<int>(CupertinoPageRoute(
                        builder: (blueContext) => BluePage()))
                    .then((int? value) =>
                        debugPrint('Ana sayfaya gelen sayı: $value'));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade300),
              child: const Text(
                style: TextStyle(color: Colors.white),
                'Mavi sayfaya gir IOS',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                int? _gelenSayi = await Navigator.push<int>(
                  context,
                  MaterialPageRoute(
                    builder: (blueContext) => BluePage(),
                  ),
                );
                print('Ana sayfaya gelen sayı: $_gelenSayi');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600),
              child: const Text(
                style: TextStyle(color: Colors.white),
                'Mavi sayfaya gir Android',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
