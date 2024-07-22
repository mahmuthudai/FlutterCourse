import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
                onLongPress: () {
                  _alertDialogExample(context, oankiOgrenci);
                },
                onTap: () {
                  if (index % 2 == 0) {
                    EasyLoading.instance.backgroundColor = Colors.red;
                  } else {
                    EasyLoading.instance.backgroundColor = Colors.blue;
                  }
                  EasyLoading.showToast('Elemana tıklandı',
                      duration: const Duration(seconds: 3),
                      toastPosition: EasyLoadingToastPosition.bottom);
                },
                title: Text(oankiOgrenci.name),
                subtitle: Text(oankiOgrenci.lastName),
                leading: CircleAvatar(
                  child: Text(
                    oankiOgrenci.id.toString(),
                  ),
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

void _alertDialogExample(BuildContext myContext, Ogrenci secilen) {
  showDialog(
      barrierDismissible: false,
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text(secilen.toString()),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('hüdai' * 100),
                Text('hüdai1' * 100),
                Text('hüdai2' * 100),
              ],
            ),
          ),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Kapat')),
                TextButton(onPressed: () {}, child: const Text('Tamam'))
              ],
            )
          ],
        );
      });
}

class Ogrenci {
  final int id;
  final String name;
  final String lastName;

  Ogrenci(this.id, this.name, this.lastName);

  @override
  String toString() {
    return 'İsim: $name Soyisim: $lastName Id: $id';
  }
}
