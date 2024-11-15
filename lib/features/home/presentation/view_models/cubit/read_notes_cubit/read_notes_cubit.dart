import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/features/home/data/models/note_model.dart';
import 'package:notes_app/features/home/presentation/view_models/cubit/read_notes_cubit/read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());

  static ReadNotesCubit get(context) => BlocProvider.of(context);

  List<NoteMode>? notes;
  fetchNotes() {
    var box = Hive.box<NoteMode>('notes_box');
    notes = box.values.toList();
  }
}
