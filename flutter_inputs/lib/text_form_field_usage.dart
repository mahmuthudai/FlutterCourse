import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextFormFieldUsage extends StatefulWidget {
  const TextFormFieldUsage({super.key});

  @override
  State<TextFormFieldUsage> createState() => _TextFormFieldUsageState();
}

class _TextFormFieldUsageState extends State<TextFormFieldUsage> {
  String _email = '', _password = '', _userName = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Text Form Field Kullanımı'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  //initialValue: 'hüdaiterzi',
                  decoration: const InputDecoration(
                    //errorStyle: TextStyle(color: Colors.amber),
                    labelText: 'Kullanıcı Adı',
                    hintText: 'Kullanıcı Adı',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.length < 4) {
                      return 'Kullanıcı Adı en az 4 karakter olmalı';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    _userName = newValue!;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  //initialValue: 'hüdaiterzi@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    //errorStyle: TextStyle(color: Colors.amber),
                    labelText: 'Email',
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Mail boş olamaz';
                    } else if (!EmailValidator.validate(value)) {
                      return 'Geçerli bir mail giriniz.';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    _email = newValue!;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  //initialValue: 'hüdaiterzi',
                  decoration: const InputDecoration(
                    //errorStyle: TextStyle(color: Colors.amber),
                    labelText: 'Parola',
                    hintText: 'Parola',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.length < 6) {
                      return 'Parola en az 6 karakter olmalı';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    _password = newValue!;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    bool validate = _formKey.currentState!.validate();
                    if (validate) {
                      _formKey.currentState!.save();
                      String result =
                          "Kullanıcı Adı: $_userName\nEmail: $_email\nParola: $_password";

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(result),
                        ),
                      );
                      _formKey.currentState!.reset();
                    }
                  },
                  child: const Text('Onayla'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
