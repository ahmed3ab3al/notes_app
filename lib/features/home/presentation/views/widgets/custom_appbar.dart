import 'package:flutter/material.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const CustomAppbar(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const Spacer(),
        CustomSearchIcon(icon: icon, onTap: onTap),
      ],
    );
  }
}
