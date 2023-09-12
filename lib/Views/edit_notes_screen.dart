import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/edit_note_view_body.dart';
import 'package:notes_app/models/note_model.dart';

class EditNotesScreen extends StatelessWidget {
  const EditNotesScreen({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
