import 'package:flutter/material.dart';
import 'Widgets/add_note_button_sheet.dart';
import 'Widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.yellow[50],

            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteButtonSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
