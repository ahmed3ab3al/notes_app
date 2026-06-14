import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
