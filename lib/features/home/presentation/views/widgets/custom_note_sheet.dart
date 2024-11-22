import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/core/utils/colors.dart';
import 'package:notes_app/core/utils/validator.dart';
import 'package:notes_app/core/widgets/custom_text_form_field.dart';
import 'package:notes_app/features/home/data/models/note_model.dart';
import 'package:notes_app/features/home/presentation/view_models/cubit/add_notes_cubit/add_note_cubit.dart';
import 'package:notes_app/features/home/presentation/view_models/cubit/add_notes_cubit/add_note_state.dart';
import 'package:notes_app/features/home/presentation/view_models/cubit/read_notes_cubit/read_notes_cubit.dart';
import 'package:notes_app/features/home/presentation/views/widgets/colors_list_view.dart';
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
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
              ),
            );
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
            ReadNotesCubit.get(context).fetchNotes();

          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
                padding:  EdgeInsets.only(
                left : 16,
                right : 16,
                bottom : MediaQuery.of(context).viewInsets.bottom,
                ),
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
                              AppValidators.validateText(
                                  contentController.text),
                          customController: contentController,
                          hintText: 'Content',
                          maxLines: 5,
                          color: AppColors.primary,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ColorsListView(),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                          isLoading: state is AddNoteLoading ? true : false,
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              var date = DateTime.now();
                              var formattedDate = DateFormat('yyyy-MM-dd').format(date);
                              var noteModel = NoteMode(
                                  title: titleController.text,
                                  content: contentController.text,
                                  date: formattedDate,
                                  color: Colors.blue.value);
                              AddNoteCubit.get(context).addNote(noteModel);
                            } else {
                              autoValidateMode = AutovalidateMode.always;
                              setState(() {});
                            }
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                )),
          );
        },
      ),
    );
  }
}
