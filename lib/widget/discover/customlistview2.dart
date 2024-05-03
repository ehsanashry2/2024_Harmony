import 'package:flutter/material.dart';

class HorizontalListView2 extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'label': 'Cognitive Behavioral Therapy Basics',
      'imagePath': 'assets/images/19 (2).png',
    },
    {
      'label': 'Facing your Fears',
      'imagePath': 'assets/images/19 (3).png',
    },
    {
      'label': 'Healthy Sleep Habits',
      'imagePath': 'assets/images/19 (1).png',
    },
    // Add more items as needed
  ];

  HorizontalListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 400,
      margin: const EdgeInsets.symmetric(
          vertical: 10.0), // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Image.asset(
                items[index]['imagePath'],
                fit: BoxFit.contain,
                //width: 80,
                // height: 50, // This can be changed to fit your layout
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  items[index]['label'],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}