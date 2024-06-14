import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:table_calendar/table_calendar.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildDateHeader(),
            _buildStatsRow(),
            _buildAchievementSection(),
            _buildCircularProgress(),
            _buildCalendar(),
          ],
        ),
      ),
    );
  }

  Widget _buildTabButton(BuildContext context, String text,
      {bool isSelected = false}) {
    return ElevatedButton(
      onPressed: () {
        // Handle tab button press
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.white : Colors.grey.shade300,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(text),
    );
  }

  Widget _buildDateHeader() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Today',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          '17, May 2020',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _buildStatsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildStatCard(
            'Current Streak', '7 days', Icons.whatshot, Colors.orange),
        _buildStatCard('Done', '4 days', Icons.check_circle, Colors.green),
        _buildStatCard('Skipped', '3 days', Icons.cancel, Colors.red),
      ],
    );
  }

  Widget _buildStatCard(
      String title, String count, IconData icon, Color iconColor) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.purple.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Row(
            children: [
              Icon(icon, color: iconColor),
              const SizedBox(width: 5),
              Text(count, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAchievementSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Achieve from your goal',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "You've been doing great today",
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _buildCircularProgress() {
    return Center(
      child: CircularPercentIndicator(
        radius: 100.0,
        lineWidth: 13.0,
        animation: true,
        percent: 0.65,
        center: const Text(
          "65%",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: Colors.purple,
      ),
    );
  }

  Widget _buildCalendar() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.purple.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TableCalendar(
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: DateTime.now(),
        calendarFormat: CalendarFormat.month,
        calendarStyle: const CalendarStyle(
          todayDecoration: BoxDecoration(
            color: Colors.purple,
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(
            color: Colors.purpleAccent,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
