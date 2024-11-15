import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/home/data/models/note_model.dart';
import 'package:notes_app/features/home/presentation/view_models/cubit/read_notes_cubit/read_notes_cubit.dart';
import 'package:notes_app/features/home/presentation/view_models/cubit/read_notes_cubit/read_notes_state.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_note_item.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        List<NoteMode> notes =ReadNotesCubit.get(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (BuildContext context, int index) {
              return  Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: CustomNoteItem(
                  model: notes[index],
                ),
              );
            },),
        );
      },
    );
  }
}
