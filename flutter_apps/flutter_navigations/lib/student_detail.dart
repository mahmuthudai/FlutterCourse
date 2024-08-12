import 'package:flutter/material.dart';
import 'package:flutter_navigations/student_list.dart';

class StudentDetail extends StatelessWidget {
  final Student selectedStudent;
  const StudentDetail({super.key, required this.selectedStudent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğrenci Detay'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(selectedStudent.id.toString()),
            Text(selectedStudent.name),
            Text(selectedStudent.lastName)
          ],
        ),
      ),
    );
  }
}
