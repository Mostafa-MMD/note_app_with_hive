import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/Widgets/custom_text_filed.dart';
import 'package:notes_app/Views/Widgets/edit_note_colors_list_view.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'custom_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.title = title! ?? widget.note.title;
              widget.note.subTitle = content! ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
            icon: Icons.done_outlined,
            title: 'Edit Note',
          ),
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                CustomTextFiled(
                  hint: widget.note.title,
                  maxLines: 1,
                  onChange: (value) {
                    title = value;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFiled(
                  hint: widget.note.subTitle,
                  maxLines: 4,
                  onChange: (value) {
                    content = value;
                  },
                ),
                const SizedBox(height: 20),
                EditNoteColorsList(
                  note: widget.note,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
