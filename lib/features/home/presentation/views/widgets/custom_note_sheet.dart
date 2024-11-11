import 'package:flutter/material.dart';
import 'package:notes_app/core/widgets/custom_text_form_field.dart';

class CustomNoteSheet extends StatelessWidget {
  const CustomNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(hintText: 'Title'),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: 'Content',
              maxLines: 5,
            )
          ],
        ));
  }
}
