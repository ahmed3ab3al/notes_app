import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/features/home/presentation/view_models/cubit/read_notes_cubit/read_notes_cubit.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    ReadNotesCubit.get(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            CustomAppbar(
              onTap: () {},
              title: 'Notes',
              icon: FontAwesomeIcons.magnifyingGlass,
            ),
            const Expanded(child: CustomNotesListView()),
          ],
        ),
      ),
    );
  }
}
