import 'package:flutter/material.dart';
import 'package:flutter_average_calculation/constants/app_constant.dart';
import 'package:flutter_average_calculation/data/data_helper.dart';
import 'package:flutter_average_calculation/model/course.dart';

class CourseList extends StatelessWidget {
  final Function onDismiss;
  const CourseList({super.key, required this.onDismiss});

  @override
  Widget build(BuildContext context) {
    List<Course> allCourse = DataHelper.allAddedCourse;

    return allCourse.isNotEmpty
        ? ListView.builder(
            itemCount: allCourse.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.startToEnd,
                onDismissed: (direction) {
                  onDismiss(index);
                },
                child: Padding(
                  padding: AppConstant.padding2,
                  child: Card(
                    child: ListTile(
                      title: Text(allCourse[index].courseName),
                      subtitle: Text(
                          '${allCourse[index].courseCredit} Kredi, Not Değeri ${allCourse[index].courseLetter}'),
                      leading: CircleAvatar(
                        backgroundColor: AppConstant.primaryColor,
                        child: Text((allCourse[index].courseCredit *
                                allCourse[index].courseLetter)
                            .toStringAsFixed(0)),
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        : Center(
            child: Text(
              'Lütfen Ders Ekleyin',
              style: AppConstant.titleStyle,
            ),
          );
  }
}
