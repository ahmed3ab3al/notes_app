import 'package:flutter/material.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 40,
    );
  }
}
