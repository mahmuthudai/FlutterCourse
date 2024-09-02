import 'package:flutter/material.dart';
import 'package:flutter_average_calculation/constants/app_constant.dart';
import 'package:flutter_average_calculation/data/data_helper.dart';

class CreditDropdownWidget extends StatefulWidget {
  final Function onCreditSelected;
  const CreditDropdownWidget({super.key, required this.onCreditSelected});

  @override
  State<CreditDropdownWidget> createState() => _CreditDropdownWidgetState();
}

class _CreditDropdownWidgetState extends State<CreditDropdownWidget> {
  double selectedCredit = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: AppConstant.dropDownPadding,
      decoration: BoxDecoration(
          borderRadius: AppConstant.borderRadius,
          color: AppConstant.primaryColor.shade100.withOpacity(0.3)),
      child: DropdownButton<double>(
        value: selectedCredit,
        items: DataHelper.allCourseCredit(),
        elevation: 16,
        iconEnabledColor: AppConstant.primaryColor.shade200,
        onChanged: (value) {
          setState(() {
            selectedCredit = value!;
            widget.onCreditSelected(selectedCredit);
          });
        },
        underline: Container(),
      ),
    );
  }
}
