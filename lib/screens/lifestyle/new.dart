import 'package:flutter/material.dart';
import 'package:ocd/screens/lifestyle/reading.dart';

import '../notes/mainappbar.dart';

void main() {
  runApp(HabitPage());
}

// Define a class for grid items
class GridItem {
  final String name;
  final Color color;
  final String imagePath;

  GridItem({
    required this.name,
    required this.color,
    required this.imagePath,
  });
}

class HabitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LifeStyleScreen(),
    );
  }
}

class LifeStyleScreen extends StatefulWidget {
  @override
  _LifeStyleScreenState createState() => _LifeStyleScreenState();
}

class _LifeStyleScreenState extends State<LifeStyleScreen> {
  // List of data for each grid item as objects
  final List<GridItem> gridItems = [
    GridItem(
      name: 'Healthy Eating',
      color: Color(0xFFD3E9F7),
      imagePath: 'assets/images/Healthy.png',
    ),
    GridItem(
      name: 'Reading',
      color: Color(0xFFE5D1FA),
      imagePath: 'assets/images/Reading.png',
    ),
    GridItem(
      name: 'Gym',
      color: Color(0xFFE3DFFD),
      imagePath: 'assets/images/Gym.png',
    ),
    GridItem(
      name: 'Planting',
      color: Color(0xFFD3E9F7),
      imagePath: 'assets/images/Planting.png',
    ),
    GridItem(
      name: 'Playing Piano',
      color: Color(0xFFE5D1FA),
      imagePath: 'assets/images/Playing Piano.png',
    ),
  ];

  // List to keep track of removed items
  List<bool> isItemRemovedList = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  final item = gridItems[index];
                  return _buildGridItem(
                    context,
                    name: item.name,
                    color: item.color,
                    imagePath: item.imagePath,
                    index: index,
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            _buildAddButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(
      BuildContext context, {
        required String name,
        required Color color,
        required String imagePath,
        required int index,
      }) {
    return isItemRemovedList[index]
        ? SizedBox() // If the item is removed, return an empty sized box
        : GestureDetector(
      onTap: () {
        if (name == 'Reading') {
          Navigator.push(
            context,
            MaterialPageRoute(
              fullscreenDialog: false, // This removes the AppBar
              builder: (context) => MainScreen(),
            ),
          );
        } else {
          setState(() {
            isItemRemovedList[index] = true;
          });
        }
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath,
                    width: 70,
                    height: 70,
                  ),
                  SizedBox(height: 8),
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'workSans',
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.close, size: 16),
                    onPressed: () {
                      setState(() {
                        isItemRemovedList[index] = true;
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddButton() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          // Reset the removed items list
          isItemRemovedList = List.generate(5, (index) => false);
        });
      },
      backgroundColor: Colors.purple,
      child: Icon(Icons.add),
    );
  }
}
