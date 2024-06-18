// lib/main_screen.dart
import 'package:flutter/material.dart';
import 'package:ocd/screens/lifestyle/aboutscreen.dart';
import 'package:ocd/screens/lifestyle/note_screen.dart';
import 'package:ocd/screens/lifestyle/reading.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Center(
              child: Text('Reading',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: "work-sans"))),
          actions: [
            TextButton(
              onPressed: () {
                // Handle Done action
              },
              child: const Text(
                'Done',
                style: TextStyle(
                    color: Color(0xffAA77FF),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: "work-sans"),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              color: Colors.white,
              child: TabBar(
                indicator: BoxDecoration(
                  color: const Color(0xFFAA77FF),
                  borderRadius: BorderRadius.circular(8),
                ),
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text('Notes'),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text('About'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [NotesScreen(), const Reading()],
        ),
      ),
    );
  }
}
