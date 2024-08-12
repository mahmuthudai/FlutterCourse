import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/blue_page.dart';
import 'package:flutter_navigations/green_page.dart';
import 'package:flutter_navigations/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      /*routes: {
        '/bluePage': (context) => BluePage(),
        '/': (context) => const HomePage(),
        '/orangePage': (context) => const OrangePage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  title: const Text('hata'),
                ),
                body: const Text('404'),
              )),*/
      onGenerateRoute: RouteGenerator.routeGenerator,
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
                int? gelenSayi = await Navigator.push<int>(
                  context,
                  MaterialPageRoute(
                    builder: (blueContext) => BluePage(),
                  ),
                );
                if (kDebugMode) {
                  print('Ana sayfaya gelen sayı: $gelenSayi');
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600),
              child: const Text(
                style: TextStyle(color: Colors.white),
                'Mavi sayfaya gir Android',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade300),
              child: const Text(
                style: TextStyle(color: Colors.white),
                'Maybe Pop Kullanımı',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const GreenPage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade300),
              child: const Text(
                style: TextStyle(color: Colors.white),
                'Push Replacement Kullanımı',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/orangePage');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600),
              child: const Text(
                style: TextStyle(color: Colors.white),
                'PushNamed',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/yellowPage');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade600),
              child: const Text(
                style: TextStyle(color: Colors.white),
                'PushNamed Kullanımı Sarı',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ogrenciListesi', arguments: 60);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade600),
              child: const Text(
                style: TextStyle(color: Colors.white),
                'Liste Oluştur',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
