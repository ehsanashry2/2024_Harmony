import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {

  List<bool> isChecked = [false, false, false, false]; // Initial state for check icons
  List<String> statuses = ['Continue...', 'Continue...', 'Continue...', 'Continue...']; // Initial state for status text

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPlanItem(
              context,
              title: 'Learn about obsessive-compulsive cleanliness',
              category: 'Articles',
              image: 'assets/images/articles.png',
              backgroundColor: Color(0xFFF5EAFB),
              statusColor: Colors.purple,
              index: 0,
              page: ArticlesPage(),
            ),
            _buildPlanItem(
              context,
              title: 'Focused breath',
              category: 'Breathe',
              image: 'assets/images/breathe.png',
              backgroundColor: Color(0xFFE5F7FF),
              statusColor: Colors.blue,
              index: 1,
              page: BreathePage(),
            ),
            _buildPlanItem(
              context,
              title: 'AI therapist',
              category: 'Therapist',
              image: 'assets/images/AII.png',
              backgroundColor: Color(0xFFF5EAFB),
              statusColor: Colors.purple,
              index: 2,
              page: TherapistPage(),
            ),
            _buildPlanItem(
              context,
              title: 'Enjoy your time and try playing some games',
              category: 'Games',
              image: 'assets/images/games.png',
              backgroundColor: Color(0xFFFFF1E6),
              statusColor: Colors.orange,
              index: 3,
              page: GamesPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlanItem(
      BuildContext context, {
        required String title,
        required String category,
        required String image,
        required Color backgroundColor,
        required Color statusColor,
        required int index,
        required Widget page,
      }) {
    return GestureDetector(
        onTap: () async {
      if (index == 0 || isChecked[index - 1]) {
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
        setState(() {
          isChecked[index] = true;
          statuses[index] = 'Done';
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please complete the previous step first.'),
          ),
        );
      }
    },
    child: Container(
    height: 110,
    margin: const EdgeInsets.only(bottom: 16),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
    color: backgroundColor,
    borderRadius: BorderRadius.circular(16),
    ),
    child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Column(
    children: [
    Icon(
    isChecked[index] ? Icons.check_circle : Icons.circle,
    color: statusColor,
    size: 24,
    ),
    const SizedBox(height: 4),
    Container(
      width: 2,
      height: 40,
      color: statusColor,
    ),
    ],
    ),
      const SizedBox(width: 16),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              statuses[index],
              style: TextStyle(
                color: statusColor,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              category,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      Image.asset(
        image,
        width: 80,
        height: 80,
        fit: BoxFit.cover,
      ),
    ],
    ),
    ),
    );
  }
}

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Articles')),
      body: Center(child: Text('Learn about obsessive-compulsive cleanliness')),
    );
  }
}

class BreathePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Breathe')),
      body: Center(child: Text('Focused breath')),
    );
  }
}

class TherapistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Therapist')),
      body: Center(child: Text('AI therapist')),
    );
  }
}

class GamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Games')),
      body: Center(child: Text('Enjoy your time and try playing some games')),
    );
  }
}
