import 'package:flutter/material.dart';
import 'package:flutter_average_calculation/constants/app_constant.dart';
import 'package:flutter_average_calculation/widgets/calculate_average_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dinamik Ortalama Hesapla',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: AppConstant.primaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const CalculateAveragePage(),
    );
  }
}
