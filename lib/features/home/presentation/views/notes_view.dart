import 'package:flutter/material.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_floating_button.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_note_sheet.dart';
import 'package:notes_app/features/home/presentation/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: CustomFloatingButton(
        onTap: (){
          showModalBottomSheet(
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                16
              )
            ),
              context: context,
              builder: (context) => const CustomNoteSheet(),
          );
        },
      )
    );
  }
}
