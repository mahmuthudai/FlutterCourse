import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PopupmenuExample extends StatefulWidget {
  const PopupmenuExample({super.key});

  @override
  State<PopupmenuExample> createState() => _PopupmenuExampleState();
}

class _PopupmenuExampleState extends State<PopupmenuExample> {
  List<String> renkler = [
    'mavi',
    'siyah',
    'kırmızı',
    'yeşil',
    'lacivert',
    'turuncu',
    'sarı'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        onSelected: (String sehir) {
          if (kDebugMode) {
            print('Seçilen şehir: $sehir');
          }
        },
        itemBuilder: (BuildContext context) {
          /*return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text('Ankara'),
              value: 'Ankara',
            ),
            PopupMenuItem(
              child: Text('Erzurum'),
              value: 'Erzurum',
            ),
            PopupMenuItem(
              child: Text('Kayseri'),
              value: 'Kayseri',
            ),
          ];*/

          return renkler
              .map((String renk) => PopupMenuItem(
                    value: renk,
                    child: Text(renk),
                  ))
              .toList();
        },
      ),
    );
  }
}
