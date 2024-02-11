// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String _img1 =
      'https://4kwallpapers.com/images/walls/thumbs_3t/13388.jpg';

  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      alignment: Alignment.center,
      height: 75,
      width: 75,
      margin: EdgeInsets.only(top: margin),
      color: renk,
      child: Text(
        harf,
        style: TextStyle(fontSize: 36),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Başlık'),
        ),
        body: Container(
          margin: EdgeInsets.all(4),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dartRowunuOlustur(),
                Expanded(child: dersleriColumnOlustur()),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          backgroundColor: Colors.red,
          child: const Icon(Icons.account_circle_rounded),
        ),
      ),
    );
  }

  Column dersleriColumnOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: containerOlustur('E', Colors.orange.shade200, margin: 15)),
        Expanded(
            child: containerOlustur('R', Colors.orange.shade300, margin: 15)),
        Expanded(
            child: containerOlustur('S', Colors.orange.shade400, margin: 15)),
        Expanded(
            child: containerOlustur('L', Colors.orange.shade500, margin: 15)),
        Expanded(
            child: containerOlustur('E', Colors.orange.shade600, margin: 15)),
        Expanded(
            child: containerOlustur('R', Colors.orange.shade700, margin: 15)),
        Expanded(
            child: containerOlustur('I', Colors.orange.shade800, margin: 15)),
      ],
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur('D', Colors.orange.shade100),
        containerOlustur('A', Colors.orange.shade200),
        containerOlustur('R', Colors.orange.shade300),
        containerOlustur('T', Colors.orange.shade400),
      ],
    );
  }

  Row containerIcindeRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: sorunluContainer,
    );
  }

  List<Widget> get sorunluContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
    ];
  }

  List<Widget> get expandedContainer {
    return [
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
    ];
  }

  List<Widget> get flexibleContainer {
    return [
      Flexible(
        child: Container(
          width: 200,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        child: Container(
          width: 200,
          height: 300,
          color: Colors.red,
        ),
      ),
    ];
  }

  Container rowColumnDersleri() {
    return Container(
      color: Colors.red.shade200,
      //height: 400,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('H'),
              Text('Ü'),
              Text('D'),
              Text('A'),
              Text('İ'),
            ],
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.green,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.red,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.blue,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(width: 4, color: Colors.purple),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30), topRight: Radius.circular(30)),
            image:
                DecorationImage(image: NetworkImage(_img1), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  color: Colors.green, offset: Offset(0, 20), blurRadius: 20),
              BoxShadow(
                  color: Colors.yellow, offset: Offset(0, -20), blurRadius: 20),
            ]),
        child: const Text(
          'hüdai',
          style: TextStyle(fontSize: 128),
        ),
        /* child: const FlutterLogo(
            /* textColor: Colors.purple,
            style: FlutterLogoStyle.stacked, */
            size: 128,
          ), */
      ),
    );
  }
}
