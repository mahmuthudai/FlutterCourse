import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint('uzun basıldı');
          },
          child: const Text("Text Button"),
        ),
        TextButton.icon(
          onPressed: () {},
          style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.red)),
          label: const Text("Text Button with Icon"),
          icon: const Icon(Icons.add),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 33, 33, 243),
              foregroundColor: Colors.yellow),
          onPressed: () {},
          child: const Text("Elevated Button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: const Text("Elevated with Icon"),
          icon: const Icon(Icons.add),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text("Outlined Button"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          label: const Text("Outlined with Icon"),
          icon: const Icon(Icons.add),
          style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
              side: const BorderSide(color: Colors.purple, width: 2)),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          label: const Text("Outlined with Icon"),
          icon: const Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.red, width: 4),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
