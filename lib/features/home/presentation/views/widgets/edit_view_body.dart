import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/utils/colors.dart';
import 'package:notes_app/core/utils/validator.dart';
import 'package:notes_app/core/widgets/custom_text_form_field.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_appbar.dart';

class EditViewBody extends StatelessWidget {
   EditViewBody({super.key});


  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SafeArea(
          child:  Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          CustomAppbar(
            title: 'Edit Note',
            icon: FontAwesomeIcons.check,
            onTap: () {},
          ),

          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            errorColor: Colors.red,
            validator: (val) =>
                AppValidators.validateText(titleController.text),
            customController: titleController,

            hintText: 'Title',
            color:Colors.white,),
          const SizedBox(
            height: 16,
          ),
           CustomTextFormField(
             errorColor: Colors.red,
            validator: (val) =>
                AppValidators.validateText(contentController.text),
            customController: contentController,
            hintText: 'Content',
            maxLines: 5,
              color:AppColors.primary,),
        ],
      )),
    );
  }
}
