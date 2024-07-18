import 'package:flutter/material.dart';

class CardListtile extends StatelessWidget {
  const CardListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card and Listtile'),
      ),
      body: Center(
        child: ListView(
          reverse: true,
          children: [
            Column(
              children: [
                listItem(),
                listItem(),
                listItem(),
                listItem(),
                listItem(),
                listItem(),
                listItem(),
                listItem(),
                listItem(),
                listItem(),
                listItem(),
                listItem(),
              ],
            ),
            const Center(child: Text('selam')),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Buton'),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChildExample() {
    return SingleChildScrollView(
      child: Column(
        children: [
          listItem(),
          listItem(),
          listItem(),
          listItem(),
          listItem(),
          listItem(),
          listItem(),
          listItem(),
          listItem(),
          listItem(),
          listItem(),
          listItem(),
        ],
      ),
    );
  }

  Column listItem() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade100,
          shadowColor: Colors.red,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            title: Text('Başlık Kısmı'),
            subtitle: Text('Altbaşlık Kısmı'),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        const Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 60,
          endIndent: 60,
        ),
      ],
    );
  }
}
