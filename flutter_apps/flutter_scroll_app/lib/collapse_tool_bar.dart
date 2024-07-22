import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CollapseToolBar extends StatelessWidget {
  const CollapseToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: false,
          backgroundColor: const Color.fromARGB(255, 11, 46, 43),
          expandedHeight: 300,
          floating: false,
          snap: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text(
              'Custom Scrollview App',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            background: Image.asset(
              'assets/images/goku.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverGrid(
            delegate: SliverChildListDelegate(listItems()),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3)),
        SliverGrid(
            delegate:
                SliverChildBuilderDelegate(_dinamicListGenerate, childCount: 6),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2)),
        SliverGrid(
            delegate:
                SliverChildBuilderDelegate(_dinamicListGenerate, childCount: 6),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200)),
        SliverGrid.count(
          crossAxisCount: 6,
          children: listItems(),
        ),
        SliverGrid.extent(
          maxCrossAxisExtent: 300,
          children: listItems(),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(5),
          sliver: SliverList(
            delegate: SliverChildListDelegate(listItems()),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
              delegate: SliverChildBuilderDelegate(_dinamicListGenerate,
                  childCount: 6)),
        ),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(listItems()), itemExtent: 100),
        SliverFixedExtentList(
            delegate:
                SliverChildBuilderDelegate(_dinamicListGenerate, childCount: 6),
            itemExtent: 50)
      ],
    );
  }

  List<Widget> listItems() {
    return [
      Container(
        height: 150,
        color: Colors.amber,
        alignment: Alignment.center,
        child: const Text(
          'Sabit Liste Elemanı 1',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.teal,
        alignment: Alignment.center,
        child: const Text(
          'Sabit Liste Elemanı 2',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.blue,
        alignment: Alignment.center,
        child: const Text(
          'Sabit Liste Elemanı 3',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.orange,
        alignment: Alignment.center,
        child: const Text(
          'Sabit Liste Elemanı 4',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.purple,
        alignment: Alignment.center,
        child: const Text(
          'Sabit Liste Elemanı 5',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: const Text(
          'Sabit Liste Elemanı 6',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget _dinamicListGenerate(BuildContext context, int index) {
    return Container(
      height: 150,
      color: _randomColor(),
      alignment: Alignment.center,
      child: Text(
        'Dinamik Liste Elemanı ${index + 1}',
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color _randomColor() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
