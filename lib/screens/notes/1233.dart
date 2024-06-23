import 'package:flutter/material.dart';

class PlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Omar's Plan",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildPlanItem(
              context,
              title: 'Learn about obsessive-compulsive cleanliness',
              status: 'Done',
              category: 'Articles',
              image: 'assets/images/articles.png',
              backgroundColor: Color(0xFFF5EAFB),
              statusColor: Colors.purple,
            ),
            _buildPlanItem(
              context,
              title: 'Focused breath',
              status: 'Continue...',
              category: 'Breathe',
              image: 'assets/images/breathe.png',
              backgroundColor: Color(0xFFE5F7FF),
              statusColor: Colors.blue,
            ),
            _buildPlanItem(
              context,
              title: 'AI therapist',
              status: '',
              category: 'Therapist',
              image: 'assets/images/therapist.png',
              backgroundColor: Color(0xFFF5EAFB),
              statusColor: Colors.purple,
            ),
            _buildPlanItem(
              context,
              title: 'Enjoy your time and try playing some games',
              status: '',
              category: 'Games',
              image: 'assets/images/games.png',
              backgroundColor: Color(0xFFFFF1E6),
              statusColor: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlanItem(
      BuildContext context, {
        required String title,
        required String status,
        required String category,
        required String image,
        required Color backgroundColor,
        required Color statusColor,
      }) {
    return Container(
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
                Icons.check_circle,
                color: statusColor,
                size: 24,
              ),
              const SizedBox(height: 4),
              Container(
                width: 2,
                height: 60,
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
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  status,
                  style: TextStyle(
                    color: statusColor,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  category,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PlanScreen(),
  ));
}