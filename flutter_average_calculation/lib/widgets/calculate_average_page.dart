import 'package:flutter/material.dart';
import 'package:flutter_average_calculation/constants/app_constant.dart';
import 'package:flutter_average_calculation/data/data_helper.dart';
import 'package:flutter_average_calculation/model/course.dart';
import 'package:flutter_average_calculation/widgets/course_list.dart';
import 'package:flutter_average_calculation/widgets/credit_dropdown_widget.dart';
import 'package:flutter_average_calculation/widgets/custom_textformfield_widget.dart';
import 'package:flutter_average_calculation/widgets/letter_dropdown_widget.dart';
import 'package:flutter_average_calculation/widgets/show_average.dart';

class CalculateAveragePage extends StatefulWidget {
  const CalculateAveragePage({super.key});

  @override
  State<CalculateAveragePage> createState() => _CalculateAveragePageState();
}

class _CalculateAveragePageState extends State<CalculateAveragePage> {
  var buildFormKey = GlobalKey<FormState>();
  double selectedValue = 4;
  double selectedCredit = 1;
  String inputCourseName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
            child: Text(
          AppConstant.title,
          style: AppConstant.titleStyle,
        )),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: _buildForm(),
              ),
              Expanded(
                flex: 1,
                child: ShowAverage(
                    courseCount: DataHelper.allAddedCourse.length,
                    average: DataHelper.calculateAverage()),
              ),
            ],
          ),
          Expanded(
            child: CourseList(
              onDismiss: (index) {
                DataHelper.allAddedCourse.removeAt(index);
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: buildFormKey,
      child: Column(
        children: [
          Padding(
            padding: AppConstant.horizontalPadding8,
            child: CustomTextformfieldWidget(
              onTextSaved: (text) {
                inputCourseName = text;
              },
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Padding(
                  padding: AppConstant.horizontalPadding8,
                  child: LetterDropdownWidget(
                    onLetterSelected: (letter) {
                      selectedValue = letter;
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: AppConstant.horizontalPadding8,
                  child: CreditDropdownWidget(
                    onCreditSelected: (credit) {
                      selectedCredit = credit;
                    },
                  ),
                ),
              ),
              IconButton(
                onPressed: _addCourseAndCalculateAverage,
                icon: const Icon(Icons.arrow_forward_ios_sharp),
                iconSize: 30,
                color: AppConstant.primaryColor,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  _addCourseAndCalculateAverage() {
    if (buildFormKey.currentState!.validate()) {
      buildFormKey.currentState!.save();
      var addedCourse = Course(
          courseName: inputCourseName,
          courseLetter: selectedValue,
          courseCredit: selectedCredit);
      DataHelper.addCourse(addedCourse);
      buildFormKey.currentState!.reset();
      setState(() {});
    }
  }
}
