import 'package:flutter/material.dart';
import 'package:ocd/screens/lifestyle/prgress.dart';

class LayoutAppBar extends StatelessWidget {
  const LayoutAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text('Life Style',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: "work-sans"))),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: TabBar(
            indicator: BoxDecoration(
              color: const Color(0xFFAA77FF),
              borderRadius: BorderRadius.circular(8),
            ),
            unselectedLabelColor: Colors.black,
            labelColor: Colors.white,
            labelPadding: EdgeInsets.zero,
            tabs: [
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAEAEA),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x40000000),
                        offset: Offset(0, 2),
                        blurRadius: 9.2,
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.all(10),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text('Habit'),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAEAEA),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x40000000),
                        offset: Offset(0, 2),
                        blurRadius: 9.2,
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.all(10),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text('Memories'),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAEAEA),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x40000000),
                        offset: Offset(0, 2),
                        blurRadius: 9.2,
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.all(10),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text('Progress'),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            //HabitScreen(),
            //MemoriesScreen(),
            ProgressScreen(),
          ],
        ),
      ),
    );
  }
}
