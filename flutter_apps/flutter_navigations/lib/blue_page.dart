import 'dart:math';

import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  BluePage({super.key});

  int _randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blue Page'),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
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
                print('Üretilen sayi $_randomNumber');
                Navigator.of(context).pop(_randomNumber);
              },
              child: const Text('Geri dön'),
            ),
          ],
        ),
      ),
    );
  }
}
