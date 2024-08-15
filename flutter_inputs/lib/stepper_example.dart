import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int _currentStep = 0;
  late String name, mail, password;
  bool error = false;

  List<Step> allSteps = [];

  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    allSteps = _allSteps();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Stepper Örnek'),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          steps: allSteps,
          currentStep: _currentStep,
          /*onStepTapped: (value) {
            setState(() {
              _currentStep = value;
            });
          },*/
          onStepContinue: () {
            setState(() {
              _continue();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_currentStep > 0) {
                _currentStep--;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _allSteps() {
    List<Step> steps = [
      Step(
        title: const Text('Kullanıcı Adı Başlık'),
        subtitle: const Text('Kullanıcı Adı Alt Başlık'),
        state: _stateSettings(0),
        isActive: true,
        content: TextFormField(
          key: key0,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Kullanıcı Adı Label',
            hintText: 'Kullanıcı Adı Hint',
          ),
          validator: (value) {
            if (value!.length < 6) {
              return 'Kullanıcı adı en az 6 karakter olmalı.';
            }
            return null;
          },
          onSaved: (newValue) {
            name = newValue!;
          },
        ),
      ),
      Step(
        title: const Text('Mail Başlık'),
        subtitle: const Text('Mail Alt Başlık'),
        state: _stateSettings(1),
        isActive: true,
        content: TextFormField(
          key: key1,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Mail Label',
            hintText: 'Mail Hint',
          ),
          validator: (value) {
            if (value!.length < 6 || !value.contains('@')) {
              return 'Geçerli bir mail giriniz';
            }
            return null;
          },
          onSaved: (newValue) {
            mail = newValue!;
          },
        ),
      ),
      Step(
        title: const Text('Şifre Başlık'),
        subtitle: const Text('Şifre Alt Başlık'),
        state: _stateSettings(2),
        isActive: true,
        content: TextFormField(
          key: key2,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Şifre Label',
            hintText: 'Şifre Hint',
          ),
          validator: (value) {
            if (value!.length < 6) {
              return 'Şifre adı en az 6 karakter olmalı.';
            }
            return null;
          },
          onSaved: (newValue) {
            password = newValue!;
          },
        ),
      ),
    ];
    return steps;
  }

  StepState _stateSettings(int currStep) {
    if (_currentStep == currStep) {
      if (error) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _continue() {
    switch (_currentStep) {
      case 0:
        if (key0.currentState!.validate()) {
          key0.currentState!.save();
          error = false;
          _currentStep++;
        } else {
          error = true;
        }
        break;
      case 1:
        if (key1.currentState!.validate()) {
          key1.currentState!.save();
          error = false;
          _currentStep++;
        } else {
          error = true;
        }
        break;
      case 2:
        if (key2.currentState!.validate()) {
          key2.currentState!.save();
          error = false;
          formComplete();
        } else {
          error = true;
        }
        break;
      default:
    }
  }

  void formComplete() {
    if (kDebugMode) {
      print(
          'Girilen Değerler: Kullanıcı Adı : $name Mail : $mail Şifre : $password');
    }
  }
}
