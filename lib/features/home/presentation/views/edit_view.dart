import 'package:flutter/material.dart';
import 'package:notes_app/features/home/data/models/note_model.dart';
import 'package:notes_app/features/home/presentation/views/widgets/edit_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key, required this.model});
  final NoteMode model;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditViewBody(
        model: model,
      ),
    );
  }
}
