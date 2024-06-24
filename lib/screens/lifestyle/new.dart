import 'package:flutter/material.dart';
import 'package:ocd/screens/lifestyle/aboutscreen.dart'; // Replace with correct path if needed
import 'package:ocd/screens/lifestyle/newhabit.dart';
import 'package:ocd/screens/notes/mainappbar.dart';
import 'reading.dart';

class HabitPage extends StatefulWidget {
  @override
  _HabitPageState createState() => _HabitPageState();
}

class _HabitPageState extends State<HabitPage> {
  final List<GridItem> gridItems = [
    GridItem(
      name: 'Healthy Eating',
      color: Color(0xFFD3E9F7),
      imagePath: 'assets/images/Healthy.png',
      icon: Icons.local_dining,
    ),
    GridItem(
      name: 'Reading',
      color: Color(0xFFE5D1FA),
      imagePath: 'assets/images/Reading.png',
      icon: Icons.book,
    ),
    GridItem(
      name: 'Gym',
      color: Color(0xFFE3DFFD),
      imagePath: 'assets/images/Gym.png',
      icon: Icons.fitness_center,
    ),
    GridItem(
      name: 'Planting',
      color: Color(0xFFD3E9F7),
      imagePath: 'assets/images/Planting.png',
      icon: Icons.local_florist,
    ),
    GridItem(
      name: 'Playing Piano',
      color: Color(0xFFE5D1FA),
      imagePath: 'assets/images/Playing Piano.png',
      icon: Icons.music_note,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
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
                    icon: item.icon,
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
        required IconData icon,
      }) {
    return GestureDetector(
        onTap: () async {
          if (name == 'Reading') {
            final result = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MainScreen(),
              ),
            );
            if (result != null) {
              setState(() {
                gridItems[index] = GridItem(
                  name: result['name'],
                  color: result['color'],
                  imagePath: imagePath,
                  icon: result['icon'],
                );
              });
            }
          } else {
            setState(() {
              gridItems.removeAt(index);
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
    Icon(
    icon,
    size: 70,
    color: Colors.black,
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
                  gridItems.removeAt(index);
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewHabit(),
          ),
        ).then((result) {
          if (result != null &&
              result.containsKey('name') &&
              result.containsKey('color')) {
            setState(() {
              gridItems.add(GridItem(
                name: result['name'],
                color: result['color'],
                imagePath: 'assets/images/Playing Piano.png',
                icon: Icons.music_note,
              ));
            });
          }
        });
      },
      backgroundColor: Color(0xFFAB93E0),
      child: Icon(Icons.add),
    );
  }
}

class GridItem {
  final String name;
  final Color color;
  final String imagePath;
  final IconData icon;

  GridItem({
    required this.name,
    required this.color,
    required this.imagePath,
    required this.icon,
  });
}

