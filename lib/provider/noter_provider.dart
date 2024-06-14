import 'package:flutter/material.dart';

class NoteProvider with ChangeNotifier {
  final List<Note> _notes = [];

  List<Note> get notes => _notes;

  void addNote(Note note) {
    _notes.add(note);
    notifyListeners();
  }

  void updateNote(Note note) {
    int index = _notes.indexWhere((n) => n.id == note.id);
    if (index != -1) {
      _notes[index] = note;
      notifyListeners();
    }
  }
}

class Note {
  final String id;
  final String title;
  final String content;
  final DateTime date;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.date,
  });
}
