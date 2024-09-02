import 'package:flutter/material.dart';
import 'package:flutter_average_calculation/constants/app_constant.dart';

class CustomTextformfieldWidget extends StatefulWidget {
  final Function onTextSaved;
  const CustomTextformfieldWidget({super.key, required this.onTextSaved});

  @override
  State<CustomTextformfieldWidget> createState() =>
      _CustomTextformfieldWidgetState();
}

class _CustomTextformfieldWidgetState extends State<CustomTextformfieldWidget> {
  String inputCourseName = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (newValue) {
        setState(() {
          inputCourseName = newValue!;
          widget.onTextSaved(inputCourseName);
        });
      },
      validator: (value) {
        if (value!.isEmpty) {
          return 'Ders Giriniz!';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          hintText: 'Matematik',
          border: OutlineInputBorder(
              borderRadius: AppConstant.borderRadius,
              borderSide: BorderSide.none),
          filled: true,
          fillColor: AppConstant.primaryColor.shade100.withOpacity(0.3)),
    );
  }
}
