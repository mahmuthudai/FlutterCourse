import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gridview Kullanımı'),
      ),
      body: GridView.builder(
        itemCount: 100,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => debugPrint('Merhaba Flutter $index tıklandı'),
            onDoubleTap: () =>
                debugPrint('Merhaba Flutter $index çift tıklandı'),
            onLongPress: () =>
                debugPrint('Merhaba Flutter $index uzun basıldı'),
            onHorizontalDragStart: (e) =>
                debugPrint('Merhaba Flutter $index uzun basıldı $e'),
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade500, width: 10),
                //borderRadius: const BorderRadius.all(Radius.circular(5)),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.red,
                      offset: Offset(10.0, 5.0),
                      blurRadius: 20),
                ],
                color: Colors.blue[100 * ((index + 1) % 8)],
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                    colors: [Colors.yellow, Colors.blue],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                image: const DecorationImage(
                    image: AssetImage('assets/images/goku.jpg'),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter),
              ),
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Merhaba Flutter $index',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


/* 
GridView.count(
        crossAxisCount: 2,
        primary: false,
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text('Merhaba Flutter'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text('Merhaba Flutter'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text('Merhaba Flutter'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text('Merhaba Flutter'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text('Merhaba Flutter'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text('Merhaba Flutter'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text('Merhaba Flutter'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text('Merhaba Flutter'),
          )
        ],
      ),
*/