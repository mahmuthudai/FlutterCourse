import 'package:flutter/material.dart';
import 'package:flutter_average_calculation/constants/app_constant.dart';

class ShowAverage extends StatelessWidget {
  final int courseCount;
  final double average;
  const ShowAverage(
      {super.key, required this.courseCount, required this.average});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          courseCount > 0 ? '$courseCount Ders Girildi' : 'Ders Giriniz',
          style: AppConstant.showAverageBodyStyle,
        ),
        Text(
          average >= 0 ? average.toStringAsFixed(2) : '0',
          style: AppConstant.averageStyle,
        ),
        Text(
          'Ortalama',
          style: AppConstant.showAverageBodyStyle,
        ),
      ],
    );
  }
}
