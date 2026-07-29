import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        CustomSearchIcon(icon: icon,),
      ],
    );
  }
}
