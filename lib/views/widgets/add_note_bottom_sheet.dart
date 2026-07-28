import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomField(
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
              validator: (value) {},
              type: TextInputType.text,
              hint: 'Title',
              hintStyle: TextStyle(color: kPrimaryColor),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              cursorColor: kPrimaryColor,
            ),
            SizedBox(height: 32),
            CustomField(
              maxLines: 5,
              validator: (value) {},
              type: TextInputType.text,
              hint: 'content',
              hintStyle: TextStyle(color: kPrimaryColor),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              cursorColor: kPrimaryColor,
            ),
            SizedBox(height: 16),
            CustomButton(
              text: 'Add',
              fontWeight: FontWeight.bold,
              width: double.infinity,
              height: 55,
              ontap: () {},
              radius: 8,
              textSize: 20,
              backgroundColor: kPrimaryColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
