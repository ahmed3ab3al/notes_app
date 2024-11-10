import 'package:flutter/material.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15,),
            CustomAppbar(),
            SizedBox(height: 20,),
            CustomNoteItem(),

          ],
        ),
      ),
    );
  }
}
