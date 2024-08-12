import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BluePage extends StatelessWidget {
  BluePage({super.key});

  int _randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blue Page'),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Blue Page',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                _randomNumber = Random().nextInt(100);
                if (kDebugMode) {
                  print('Üretilen sayi $_randomNumber');
                }
                Navigator.of(context).pop(_randomNumber);
              },
              child: const Text('Geri dön'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/orangePage');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade300),
              child: const Text(
                style: TextStyle(color: Colors.white),
                'Turuncu sayfaya git',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
