/*import 'package:flutter/material.dart';
import 'package:ocd/screens/Memory/Memory.dart';

import '../memories/memories.dart';
import 'new.dart';

void main() {
  runApp(const Lifestylepage());
}

class Lifestylepage extends StatelessWidget {
  const Lifestylepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  MaterialPageRoute(builder: (context) => const Lifestylepage()),
                );
              },
            ),
          ),
          elevation: 0,
        ),

        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: const Color(0xFFD9D9D9),
            width:340,
            height:39,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(

                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  HabitPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white,
                    ),
                    child: const Text('Habit',style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'workSans',
                      fontSize: 15,
                    ),),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Memorise()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white, // لون النص
                    ),
                    child: const Text('Memories',style: TextStyle(

                      fontWeight: FontWeight.w500,
                      fontFamily: 'workSans',
                      fontSize: 15,
                    ),),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProgressPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white, // لون النص
                    ),
                    child: const Text('Progress',style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'workSans',
                      fontSize: 15,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Progress',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Progress Page'),
        ),
      ),
    );
  }
}*/
// ignore_for_file: prefer_const_constructors
//Lifestylepage
import 'package:flutter/material.dart';
import 'package:ocd/screens/Proogress/progress.dart';
import 'package:ocd/screens/lifestyle/new.dart';
import '../Memory/Memorypage.dart';
import '../home/Home/Homepage.dart';

void main() {
  runApp(const Lifestylepage());
}

class Lifestylepage extends StatelessWidget {
  const Lifestylepage({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCustomTab(),
    );
  }
}

class MyCustomTab extends StatefulWidget {
  const MyCustomTab({super.key});

  @override
  State<MyCustomTab> createState() => _MyCustomTabState();
}

class _MyCustomTabState extends State<MyCustomTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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

                int pressCount = 0;

                setState(() {
                  pressCount++;
                });

                if (pressCount % 2 == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Lifestylepage()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }
              },
            ),
          ),
          elevation: 0,
        ),

        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_literals_to_create_immutables
            Container(
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFD9D9D9)),
              child: TabBar(
                indicator: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                labelColor: Colors.black,
                dividerColor: Colors.black,
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(
                    child: Text(
                      'Habit',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Memories',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      ' Progress',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: const [
                HabitPage(),
                ImagePickerPage(),
                ProgressScreen(),

              ]),
            )
          ],
        ),
      ),
    );
  }
}
//HabitPage(),
//ImagePickerPage(),
//ProgressScreen(),