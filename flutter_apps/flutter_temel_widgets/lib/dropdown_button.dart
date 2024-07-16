import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  final List<String> _tumSehirler = [
    'İstanbul',
    'Ankara',
    'İzmir',
    'Adana',
    'Erzurum',
    'Van'
  ];

  String _secilenSehir = 'Ankara';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
          hint: const Text('Şehir Seçiniz'),
          icon: const Icon(Icons.arrow_downward),
          iconSize: 32,
          style: const TextStyle(color: Colors.red),
          underline: Container(
            height: 4,
            color: Colors.purple,
          ),
          items: _tumSehirler
              .map(
                (String oankiSehir) => DropdownMenuItem(
                  value: oankiSehir,
                  child: Text(oankiSehir),
                ),
              )
              .toList(),
          value: _secilenSehir,
          onChanged: (String? yeni) {
            setState(() {
              _secilenSehir = yeni!;
            });
          }),
    );
  }
}
