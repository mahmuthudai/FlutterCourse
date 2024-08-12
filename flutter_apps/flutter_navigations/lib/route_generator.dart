import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/main.dart';
import 'package:flutter_navigations/student_list.dart';
import 'package:flutter_navigations/orange_page.dart';
import 'package:flutter_navigations/student_detail.dart';
import 'package:flutter_navigations/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _route(Widget route, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => route,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => route,
      );
    } else {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => route,
      );
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _route(const HomePage(), settings);

      case '/orangePage':
        return _route(const OrangePage(), settings);

      case '/yellowPage':
        return _route(const YellowPage(), settings);

      case '/ogrenciListesi':
        return _route(const OgrenciListesi(), settings);

      case '/ogrenciDetay':
        var parameterStudent = settings.arguments as Student;
        return _route(
            StudentDetail(
              selectedStudent: parameterStudent,
            ),
            settings);

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: const Text('hata'),
                  ),
                  body: const Center(child: Text('404')),
                ));
    }
  }
}
