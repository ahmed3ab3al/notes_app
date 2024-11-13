import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/features/home/data/models/note_model.dart';
import 'package:notes_app/features/home/presentation/view_models/cubit/add_notes_cubit/add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  static AddNoteCubit get(context) => BlocProvider.of(context);

  addNote(NoteMode note) async {
    emit(AddNoteLoading());
    try {
      var box = Hive.box<NoteMode>('notes_box');
      emit(AddNoteSuccess());
      await box.add(note);
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
