import 'package:flutter/material.dart';

class ListViewLayoutProblems extends StatelessWidget {
  const ListViewLayoutProblems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Layout Problems'),
      ),
      body: Container(
        height: 200,
        decoration:
            BoxDecoration(border: Border.all(width: 4, color: Colors.red)),
        child: Row(
          children: [
            const Text('başladı'),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    color: Colors.orange.shade100,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade100,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade100,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                ],
              ),
            ),
            const Text('Bitti')
          ],
        ),
      ),
    );
  }

  Column listInsadeColumn() {
    return Column(
      children: [
        const Text('Başladı'),
        Expanded(
          child: ListView(
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade100,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade100,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade100,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
            ],
          ),
        ),
        const Text('Bitti'),
      ],
    );
  }
}
