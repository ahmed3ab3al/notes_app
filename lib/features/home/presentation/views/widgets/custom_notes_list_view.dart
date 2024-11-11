import 'package:flutter/material.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_note_item.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: CustomNoteItem(),
        );
      },),
    );
  }
}
