import 'package:flutter/material.dart';
import 'package:ocd/screens/lifestyle/newnotescreen.dart';
import 'package:provider/provider.dart';

import '../../provider/noter_provider.dart';

class NoteDetailScreen extends StatelessWidget {
  static const routeName = '/note-detail';

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  NoteDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Note note = ModalRoute.of(context)!.settings.arguments as Note;
    _titleController.text = note.title;
    _contentController.text = note.content;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.save, color: Color(0xffAA77FF)),
            onPressed: () {
              final updatedNote = Note(
                id: note.id,
                title: _titleController.text,
                content: _contentController.text,
                date: note.date,
              );
              Provider.of<NoteProvider>(context, listen: false)
                  .updateNote(updatedNote);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NoteTitleField(controller: _titleController),
            Text(
              '${note.date.toLocal()}'.split(' ')[0],
              style: const TextStyle(color: Colors.grey),
            ),
            Expanded(
              child: NoteContentField(controller: _contentController),
            ),
          ],
        ),
      ),
    );
  }
}
