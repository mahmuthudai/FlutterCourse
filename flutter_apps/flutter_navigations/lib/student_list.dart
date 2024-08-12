import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({super.key});

  @override
  Widget build(BuildContext context) {
    int listLength = ModalRoute.of(context)!.settings.arguments as int;
    List<Student> allStudents = List.generate(
        listLength,
        (index) => Student(
            index + 1, 'İsim : ${index + 1}', 'Soy İsim : ${index + 1}'));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğrenci Listesi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              var selected = allStudents[index];
              Navigator.pushNamed(context, '/ogrenciDetay',
                  arguments: selected);
            },
            leading: CircleAvatar(
              child: Text(allStudents[index].id.toString()),
            ),
            title: Text(allStudents[index].name),
            subtitle: Text(allStudents[index].lastName),
          );
        },
        itemCount: listLength,
      ),
    );
  }
}

class Student {
  final int id;
  final String name;
  final String lastName;

  Student(this.id, this.name, this.lastName);
}
