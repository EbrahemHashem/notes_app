import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    // emit add note loading
    emit(
      AddNoteLoading(),
    );
    try {
      var notesBox = Hive.box<NoteModel>(knotesBox);
      await notesBox.add(note);
      // emit add note success
      emit(
        AddNoteSuccess(),
      );
    } catch (e) {
      // emit add note failure
      emit(
        AddNoteFailure(
          e.toString(),
        ),
      );
    }
  }
}
