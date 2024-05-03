import 'package:flutter/material.dart';

class HorizontalListView1 extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'label': 'Teen OCD Stories',
      'imagePath': 'assets/images/18.png',
    },
    {
      'label': 'Teen OCD Podcast',
      'imagePath': 'assets/images/17.png',
    },
    // Add more items as needed
  ];

  HorizontalListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 400, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  items[index]['imagePath'],
                  fit: BoxFit.fill,
                  // width: 80,
                  // height: 50, // This can be changed to fit your layout
                ),
              ),
              Text(
                items[index]['label'],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'WorkSans',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}