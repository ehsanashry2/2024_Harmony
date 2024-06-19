import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/noter_provider.dart';

class NewNoteScreen extends StatelessWidget {
  static const routeName = '/new-note';

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  NewNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Note',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "work-sans",
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              final title = _titleController.text;
              final content = _contentController.text;

              if (title.isNotEmpty && content.isNotEmpty) {
                final newNote = Note(
                  id: DateTime.now().toString(),
                  title: title,
                  content: content,
                  date: DateTime.now(),
                );

                Provider.of<NoteProvider>(context, listen: false)
                    .addNote(newNote);
                Navigator.of(context).pop();
              }
            },
            child: const Text(
              'Done',
              style: TextStyle(
                color: Color(0xffAA77FF),
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: "work-sans",
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            NoteTitleField(controller: _titleController),
            Expanded(
              child: NoteContentField(controller: _contentController),
            ),
          ],
        ),
      ),
    );
  }
}

class NoteTitleField extends StatelessWidget {
  final TextEditingController controller;

  const NoteTitleField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        hintText: 'Title',
        border: InputBorder.none,
        hintStyle: TextStyle(fontSize: 24),
      ),
      style: const TextStyle(fontSize: 24),
    );
  }
}

class NoteContentField extends StatelessWidget {
  final TextEditingController controller;

  const NoteContentField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        hintText: 'Type Something...',
        border: InputBorder.none,
      ),
      maxLines: null,
    );
  }
}
