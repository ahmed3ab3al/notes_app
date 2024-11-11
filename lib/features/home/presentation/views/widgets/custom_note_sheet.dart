import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/colors.dart';
import 'package:notes_app/core/widgets/custom_text_form_field.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_Button.dart';

class CustomNoteSheet extends StatelessWidget {
  const CustomNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(hintText: 'Title',
              color: AppColors.primary,),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: 'Content',
                maxLines: 5,
                color: AppColors.primary,
              ),
              SizedBox(
                height: 128,
              ),
              CustomButton(),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ));
  }
}
