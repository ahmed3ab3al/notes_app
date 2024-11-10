import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 50,
      decoration:BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: Colors.white,
          size: 15,
        ),
      ),
    );
  }
}
