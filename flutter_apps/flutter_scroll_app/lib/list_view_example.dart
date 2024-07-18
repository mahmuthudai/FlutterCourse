import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(
        index + 1, 'Öğrenci Adı ${index + 1}', 'Öğrenci Soyadı ${index + 1}'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Öğrenci Listesi')),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            var oankiOgrenci = tumOgrenciler[index];
            return Card(
              color: index % 2 == 0
                  ? Colors.orange.shade100
                  : Colors.purple.shade100,
              child: ListTile(
                onTap: () {
                  // ignore: avoid_print
                  print('eleman tıklandı $index');
                },
                title: Text(oankiOgrenci.name),
                subtitle: Text(oankiOgrenci.lastName),
                leading: CircleAvatar(
                  child: Text(oankiOgrenci.id.toString()),
                ),
              ),
            );
          },
          itemCount: tumOgrenciler.length,
          separatorBuilder: (context, index) {
            var newIndex = index + 1;
            if (newIndex % 4 == 0) {
              return const Divider(
                thickness: 2,
                color: Colors.teal,
              );
            }
            return const SizedBox();
          },
        ));
  }

  ListView clasicListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.name),
                subtitle: Text(ogr.lastName),
                leading: CircleAvatar(
                  child: Text(ogr.id.toString()),
                ),
              ))
          .toList(),
    );
  }
}

class Ogrenci {
  final int id;
  final String name;
  final String lastName;

  Ogrenci(this.id, this.name, this.lastName);
}
