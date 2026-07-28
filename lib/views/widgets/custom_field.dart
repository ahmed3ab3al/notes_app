import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? label;
  final String? hint;
  final int? maxLines;
  final bool obsecure;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextStyle? floatingLabelStyle;
  final ValueChanged<String>? onSubmited;
  final bool? filled;
  final Color? filledColor;
  final EdgeInsetsGeometry? contentPadding;
  final Color? cursorColor;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final TextInputType type;
  final TextEditingController? controller;
  final TextInputAction? action;
  final FormFieldValidator validator;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onchange;
  final bool isReadOnly;
  const CustomField({
    this.floatingLabelStyle,
    super.key,
    this.controller,
    required this.validator,
    required this.type,
    this.prefixIcon,
    this.label,
    this.onTap,
    this.obsecure = false,
    this.onchange,
    this.isReadOnly = false,
    this.action,
    this.suffixIcon,
    this.hint,
    this.hintStyle,
    this.labelStyle,
    this.filled,
    this.filledColor,
    this.cursorColor,
    this.onSubmited,
    this.contentPadding,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.border,
    this.enabledBorder,
    this.prefixIconColor,
    this.suffixIconColor, this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: cursorColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hint,
        labelStyle: labelStyle,
        hintStyle: hintStyle,
        filled: filled,
        fillColor: filledColor,
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        suffixIconColor: suffixIconColor,
        labelText: label,
        contentPadding: contentPadding,
        border: border,
        focusedBorder: focusedBorder,
        enabledBorder: enabledBorder,
        focusedErrorBorder: focusedErrorBorder,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        floatingLabelStyle: floatingLabelStyle,
      ),
      onTap: onTap,

      onChanged: onchange,
      onFieldSubmitted: onSubmited,
      obscureText: obsecure,
      readOnly: isReadOnly,
      keyboardType: type,
      controller: controller,
      validator: validator,
      textInputAction: action,
    );
  }
}
