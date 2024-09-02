import 'package:flutter/material.dart';
import 'package:flutter_average_calculation/constants/app_constant.dart';
import 'package:flutter_average_calculation/data/data_helper.dart';

class LetterDropdownWidget extends StatefulWidget {
  final Function onLetterSelected;
  const LetterDropdownWidget({super.key, required this.onLetterSelected});

  @override
  State<LetterDropdownWidget> createState() => _LetterDropdownWidgetState();
}

class _LetterDropdownWidgetState extends State<LetterDropdownWidget> {
  double selectedValue = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: AppConstant.dropDownPadding,
      decoration: BoxDecoration(
          borderRadius: AppConstant.borderRadius,
          color: AppConstant.primaryColor.shade100.withOpacity(0.3)),
      child: DropdownButton<double>(
        value: selectedValue,
        items: DataHelper.allCourseLetters(),
        elevation: 16,
        iconEnabledColor: AppConstant.primaryColor.shade200,
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
            widget.onLetterSelected(selectedValue);
          });
        },
        underline: Container(),
      ),
    );
  }
}
