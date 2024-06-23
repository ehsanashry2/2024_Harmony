import 'package:flutter/material.dart';
import 'package:ocd/screens/lifestyle/aboutscreen.dart';

import 'package:ocd/screens/lifestyle/new.dart';
import 'package:ocd/screens/lifestyle/reading.dart';
import '../lifestyle/life.dart';
import 'note_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleSpacing: 0, // Remove default padding around the title
          leading: GestureDetector(
            onTap: () {
              // Navigate to the 'Reading' screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Lifestylepage()),
              );
            },
            child: Icon(
              Icons.arrow_back_ios, // Use arrow_back_ios for left arrow
              color: Colors.black, // Set arrow color to black
            ),
          ),
          title: Text(
            'Reading',
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
                // Navigate to the 'DonePage' screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lifestylepage()),
                );
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
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              color: Color(0xFFEAEAEA),
              child: TabBar(
                indicator: BoxDecoration(
                  color: const Color(0xFFAA77FF),
                  borderRadius: BorderRadius.circular(8),
                ),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16), // Adjust the horizontal padding as needed
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text('Notes'),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16), // Adjust the horizontal padding as needed
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text('About'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            NotesScreen(),
            const Reading(),
          ],
        ),
      ),
    );
  }
}
