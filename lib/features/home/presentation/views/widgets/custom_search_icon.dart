import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const CustomSearchIcon({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap ,
      child: Container(
        height: 50,
        width: 50,
        decoration:BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16),
        ),
        child:  Center(
          child: Icon(
           icon,
            color: Colors.white,
            size: 15,
          ),
        ),
      ),
    );
  }
}
