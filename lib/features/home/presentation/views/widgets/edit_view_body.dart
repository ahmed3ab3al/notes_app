import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/utils/colors.dart';
import 'package:notes_app/core/utils/validator.dart';
import 'package:notes_app/core/widgets/custom_text_form_field.dart';
import 'package:notes_app/features/home/data/models/note_model.dart';
import 'package:notes_app/features/home/presentation/view_models/cubit/read_notes_cubit/read_notes_cubit.dart';
import 'package:notes_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:notes_app/features/home/presentation/views/widgets/edit_colors_list_view.dart';

class EditViewBody extends StatefulWidget {
 const EditViewBody({super.key, required this.model,});


  final NoteMode model;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
   TextEditingController titleController = TextEditingController();

   TextEditingController contentController = TextEditingController();

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
            onTap: () {
              widget.model.title = titleController.text == '' ? widget.model.title : titleController.text;
              widget.model.content = contentController.text == '' ? widget.model.content : contentController.text;
              widget.model.save();
              ReadNotesCubit.get(context).fetchNotes();
              Navigator.pop(context);

            },
          ),

          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            errorColor: Colors.red,
            validator: (val) =>
                AppValidators.validateText(titleController.text),
            customController: titleController,
            hintText:  widget.model.title,
            color:Colors.white,),
          const SizedBox(
            height: 16,
          ),
           CustomTextFormField(
             errorColor: Colors.red,
            validator: (val) =>
                AppValidators.validateText(contentController.text),
            customController: contentController,
            hintText: widget.model.content,
            maxLines: 5,
              color:AppColors.primary,),
          const SizedBox(
            height: 16,
          ),
          EditColorsListView(
            note: widget.model,
          ),
        ],
      )),
    );
  }
}
