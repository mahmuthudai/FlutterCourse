import 'package:flutter/material.dart';
import 'package:flutter_average_calculation/model/course.dart';

class DataHelper {
  static List<String> _allCourseLetters() {
    return ['AA', 'BA', 'BB', 'CB', 'CC', 'DC', 'DD', 'FD', 'FF'];
  }

  static List<int> _allCourseCredit() {
    return List.generate(10, (index) => index + 1).toList();
  }

  static List<Course> allAddedCourse = [];

  static addCourse(Course course) {
    allAddedCourse.add(course);
  }

  static double calculateAverage() {
    double totalPoint = 0;
    double totalCredit = 0;

    for (var element in allAddedCourse) {
      totalPoint += element.courseCredit * element.courseLetter;
      totalCredit += element.courseCredit;
    }

    return totalPoint / totalCredit;
  }

  static double _convertLetters(String letter) {
    switch (letter) {
      case 'AA':
        return 4;
      case 'BA':
        return 3.5;
      case 'BB':
        return 3;
      case 'CB':
        return 2.5;
      case 'CC':
        return 2;
      case 'DC':
        return 1.5;
      case 'DD':
        return 1;
      case 'FD':
        return 0.5;
      case 'FF':
        return 0;

      default:
        return 1;
    }
  }

  static List<DropdownMenuItem<double>> allCourseLetters() {
    return _allCourseLetters()
        .map((e) => DropdownMenuItem(
              value: _convertLetters(e),
              child: Text(e),
            ))
        .toList();
  }

  static List<DropdownMenuItem<double>> allCourseCredit() {
    return _allCourseCredit()
        .map(
          (e) => DropdownMenuItem(
            value: e.toDouble(),
            child: Text(e.toString()),
          ),
        )
        .toList();
  }
}
