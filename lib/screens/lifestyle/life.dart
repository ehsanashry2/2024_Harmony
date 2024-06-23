import 'package:flutter/material.dart';
import 'package:ocd/screens/Proogress/progress.dart';
import 'package:ocd/screens/lifestyle/new.dart';
import 'package:ocd/screens/progress/progress.dart';
import '../Memory/Memorypage.dart';

import '../home/Home/Homepage.dart';
import '../home/Home/layoutscreen.dart';

class Lifestylepage extends StatefulWidget {
  const Lifestylepage({Key? key}) : super(key: key);

  @override
  State<Lifestylepage> createState() => _LifestylepageState();
}

class _LifestylepageState extends State<Lifestylepage> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Life Style',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontFamily: 'workSans',
              fontSize: 20,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>LayOutScreen()),
                );
              },
            ),
          ),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Ensure full width
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 39,
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
                child: TabBar(
                  onTap: (index) {
                    setState(() {
                      selectIndex = index;
                    });
                  },
                  labelPadding: const EdgeInsets.symmetric(horizontal: 7),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  tabs: [
                    Text(
                      'Habit',
                      style: TextStyle(
                        color: selectIndex == 0 ? Colors.black : Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Memorise ',
                      style: TextStyle(
                        color: selectIndex == 1 ? Colors.black : Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Progress",
                      style: TextStyle(
                        color: selectIndex == 2 ? Colors.black : Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  HabitPage(),
                  ImagePickerPage(),
                  Progresspage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}