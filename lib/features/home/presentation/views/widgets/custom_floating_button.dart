import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/utils/colors.dart';

class CustomFloatingButton extends StatelessWidget {
  final VoidCallback onTap;
  const CustomFloatingButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 4),
        child: Container(
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            color:AppColors.primary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(
            FontAwesomeIcons.plus,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
    );
  }
}
