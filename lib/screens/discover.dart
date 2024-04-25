import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ocd/widget/discover/categorybutton.dart';
//import 'package:get/get_connect/http/src/utils/utils.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    // double gridWidth =
    //     MediaQuery.of(context).size.width * 0.20; // Adjust grid width as needed
    // double gridHeight = MediaQuery.of(context).size.height *
    //     0.2; // Adjust grid height as needed
    List<List<Color>> buttonColors = [
      [
        const Color(0xFFBDA7DA),
        const Color(0xFF9575CD)
      ], // Gradient for AI Therapist
      [
        const Color(0xFFFAD0C4),
        const Color(0xFFF76B8A)
      ], // Gradient for Life Style
      // ... Define gradients for other categories
    ];

    // Use a list of category information to build your grid items
    List<Map<String, dynamic>> categories = [
      {
        'label': 'AI Therapist',
        'imagePath': 'assets/images/AI.png',
        'colors': buttonColors[0]
      },
      {
        'label': 'Life Style',
        'imagePath': 'assets/images/lifestyle.png',
        'colors': buttonColors[1]
      },
      {
        'label': 'Breath',
        'imagePath': 'assets/images/breath.png',
        'colors': buttonColors[1]
      },
      {
        'label': 'Podcasts',
        'imagePath': 'assets/images/podcastes.png',
        'colors': buttonColors[1]
      },
      {
        'label': 'Articles',
        'imagePath': 'assets/images/Articles.png',
        'colors': buttonColors[1]
      },
      {
        'label': 'Games',
        'imagePath': 'assets/images/games.png',
        'colors': buttonColors[1]
      },
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Discover',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: 'WorkSans'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color:
                    const Color(0xFFF6F2FF), // Use the desired background color
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText:
                      'Search for Podcasts , Articles and Games', // Placeholder text
                  // Placeholder text
                  hintStyle: TextStyle(
                    color: Colors.grey, // Adjust hint text color as needed
                    fontFamily: 'WorkSans', // Use the desired font family
                    fontSize: 13.0, // Use the desired font size
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none, // Hide the default border
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 20), // Adjust padding as needed
                  prefixIcon: Icon(
                    Icons.search_outlined, // Use the desired search icon
                    color: Colors.grey, // Adjust icon color as needed
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 50,
                ),
                itemBuilder: (context, index) {
                  var category = categories[index];
                  return CategoryButton(
                    label: category['label'],
                    imagePath: category['imagePath'],
                    gradientColors: category['colors'],
                    width: 50,
                    height: 20,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
