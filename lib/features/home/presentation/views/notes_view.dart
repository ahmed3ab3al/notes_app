import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/home/presentation/view_models/cubit/read_notes_cubit/read_notes_cubit.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_floating_button.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_note_sheet.dart';
import 'package:notes_app/features/home/presentation/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotesCubit(),
      child: Scaffold(
          body: const NotesViewBody(),
          floatingActionButton: CustomFloatingButton(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        16
                    )
                ),
                context: context,
                builder: (context) => CustomNoteSheet(),
              );
            },
          )
      ),
    );
  }
}
