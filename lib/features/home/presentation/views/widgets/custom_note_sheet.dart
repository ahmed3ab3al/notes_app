import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/colors.dart';
import 'package:notes_app/core/utils/validator.dart';
import 'package:notes_app/core/widgets/custom_text_form_field.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_Button.dart';

class CustomNoteSheet extends StatefulWidget {
   const CustomNoteSheet({super.key});

  @override
  State<CustomNoteSheet> createState() => _CustomNoteSheetState();
}

class _CustomNoteSheetState extends State<CustomNoteSheet> {
   TextEditingController titleController = TextEditingController();

   TextEditingController contentController = TextEditingController();

   GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: autoValidateMode,
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  errorColor: Colors.red,
                  validator: (val) =>
                      AppValidators.validateText(titleController.text),
                  customController: titleController,
                  hintText: 'Title',
                color: AppColors.primary,),
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
                  color: AppColors.primary,
                ),
                const SizedBox(
                  height: 128,
                ),
                 CustomButton(
                  onTap: (){
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    }else{
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {});
                    }

                  },
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ));
  }
}
