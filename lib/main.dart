import 'package:flutter/material.dart';
import 'package:ocd/provider/noter_provider.dart';
import 'package:ocd/screens/layout_tap_bar.dart';
import 'package:ocd/screens/lifestyle/mainappbar.dart';
import 'package:ocd/screens/lifestyle/newnotescreen.dart';
import 'package:ocd/screens/lifestyle/note_screen.dart';
//import 'package:ocd/screens/survey/survey.dart';
import 'package:provider/provider.dart';

import 'screens/lifestyle/NewNoteDetalis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NoteProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LayoutAppBar(),
        routes: {
          NewNoteScreen.routeName: (context) => NewNoteScreen(),
          NoteDetailScreen.routeName: (context) => NoteDetailScreen(),
        },
      ),
    );
  }
}
