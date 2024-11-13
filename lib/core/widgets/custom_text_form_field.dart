import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.hintText, this.maxLines = 1, required this.color,required this.customController, required this.validator, required this.errorColor});
  final String hintText;
  final int maxLines;
  final Color color;
  final Color errorColor;
  final TextEditingController? customController;
  final String? Function(String?) validator;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: customController,
      cursorColor: AppColors.primary,
      maxLines: maxLines,
      decoration: InputDecoration(
        errorStyle: TextStyle(color: errorColor),
        hintText: hintText,
        hintStyle:  TextStyle(color:color),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(AppColors.primary),
        errorBorder: buildOutlineInputBorder(errorColor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([Color? color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
