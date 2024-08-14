import 'package:flutter/material.dart';
import 'package:flutter_inputs/date_time_example.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DateTimeExample(),
    );
  }
}

class TextFieldUsage extends StatefulWidget {
  final String title;
  const TextFieldUsage({super.key, required this.title});

  @override
  State<TextFieldUsage> createState() => _TextFieldUsageState();
}

class _TextFieldUsageState extends State<TextFieldUsage> {
  late TextEditingController _emailController;
  late FocusNode _focusNode;
  int maxLineCount = 1;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLineCount = 3;
        } else {
          maxLineCount = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _emailController,
              focusNode: _focusNode,
              autofocus: true,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLines: maxLineCount,
              maxLength: 20,
              cursorColor: Colors.amber,
              decoration: const InputDecoration(
                  labelText: 'Label Text',
                  hintText: 'Email Giriniz',
                  //icon: Icon(Icons.add),
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.access_alarm),
                  filled: true,
                  fillColor: Colors.amber,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  )),
              onChanged: (value) {
                if (value.length > 3) {
                  setState(() {
                    _emailController.value = TextEditingValue(
                        text: value,
                        selection:
                            TextSelection.collapsed(offset: value.length));
                  });
                }
              },
              onSubmitted: (value) {
                // ignore: avoid_print
                print(value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_emailController.text),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _emailController.text = 'terzi437@gmail.com';
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
