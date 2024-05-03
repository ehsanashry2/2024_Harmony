import 'package:flutter/material.dart'; //import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:ocd/widget/discover/catogrybutton.dart';
import 'package:ocd/widget/discover/customlistview.dart';
import 'package:ocd/widget/discover/customlistview2.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<Color>> buttonColors = [
      [const Color(0xFFE5D1FA), const Color(0xFFBA68C8)],
      [const Color(0xFFE5D1FA), const Color(0xFFBA68C8)],
      [const Color(0xFFE3DFFD), const Color(0xFFA99CF9)],
      [const Color(0xFFE3DFFD), const Color(0xFFA99CF9)],
      [const Color(0xFFECF2FF), const Color(0xFFC4D6FF)],
      [const Color(0xFFECF2FF), const Color(0xFFC4D6FF)],
      // Gradient for AI Therapist
      // Gradient for Life Style
      // ... Define gradients for other categories
    ];

    // Use a list of category information to build your grid items
    List<Map<String, dynamic>> categories = [
      {
        'label': 'AI Therapist',
        'imagePath': 'assets/images/AII.png',
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
        'colors': buttonColors[2]
      },
      {
        'label': 'Podcasts',
        'imagePath': 'assets/images/podcastes.png',
        'colors': buttonColors[3]
      },
      {
        'label': 'Articles',
        'imagePath': 'assets/images/Articles.png',
        'colors': buttonColors[4]
      },
      {
        'label': 'Games',
        'imagePath': 'assets/images/games.png',
        'colors': buttonColors[5]
      },
    ];

    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 70.0, left: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Discover',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'WorkSans'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(
                        0xFFF6F2FF), // Use the desired background color
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10), // Adjust padding as needed
                      hintText:
                          'Search for Podcasts , Articles and Games', // Placeholder text
                      // Placeholder text
                      hintStyle: const TextStyle(
                        color: Colors.grey, // Adjust hint text color as needed
                        fontFamily: 'WorkSans', // Use the desired font family
                        fontSize: 13.0, // Use the desired font size
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none, // Hide the default border
                      // Adjust padding as needed
                      prefixIcon: IconButton(
                        color: Colors.white, // Adjust icon color as needed
                        onPressed: () {}, // Add search functionality as needed
                        icon: const Icon(
                          Icons.search_outlined, // Use the desired search icon
                          color: Colors.grey, // Adjust icon color as needed
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, right: 3),
                  child: SizedBox(
                    height: 250,
                    child: GridView.builder(
                      itemCount: categories.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: (1 / 1),
                        mainAxisExtent: 60,
                      ),
                      itemBuilder: (context, index) {
                        var category = categories[index];
                        return CategoryButton(
                          label: category['label'],
                          imagePath: category['imagePath'],
                          gradientColors: category['colors'],
                        );
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Popular ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: "WorkSans",
                    ),
                  ),
                ),
                HorizontalListView1(),
                HorizontalListView2(),
              ],
            )));
  }
}
