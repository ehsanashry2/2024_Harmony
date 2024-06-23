import 'package:flutter/material.dart';
import 'package:ocd/screens/notes/newnotscreen.dart';

import 'package:provider/provider.dart';

import '../../provider/noter_provider.dart';
import 'NewNoteDetalis.dart';



class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Consumer<NoteProvider>(
              builder: (context, noteProvider, _) {
                return ListView.builder(
                  itemCount: noteProvider.notes.length,
                  itemBuilder: (context, index) {
                    final note = noteProvider.notes[index];
                    return NoteCard(note: note);
                  },
                );
              },
            ),
          ),
          Container(
            width: 60,
            height: 60,
            margin: const EdgeInsets.only(left: 270, bottom: 20),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x40000000),
                  offset: Offset(0, 2),
                  blurRadius: 9.2,
                ),
              ],
              shape: BoxShape.circle,
              color: Color(0xffAB93E0),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute
                  (builder:(context)=> NewNoteScreen(),));
              },
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class NoteCard extends StatelessWidget {
  final Note note;

  const NoteCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          NoteDetailScreen.routeName,
          arguments: note,
        );
      },
      child: Card(
        color: const Color(0xffE5D1FA),
        margin: const EdgeInsets.all(12.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: "work-sans"),
              ),
              const SizedBox(height: 4),
              Text(
                note.content,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                '${note.date.toLocal()}'.split(' ')[0],
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}