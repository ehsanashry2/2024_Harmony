import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class Progresspage extends StatelessWidget {
  const Progresspage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDateHeader(),
            SizedBox(height: 5),
            _buildStatsRow(),
            SizedBox(height: 10),
            _buildAchievementSection(),
            SizedBox(height: 10),
            _buildCircularProgress(),
            SizedBox(height: 20), // Adjusted space after circular progress
             // New: Date picker widget
            SizedBox(height: 20), // Additional space at the bottom
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
    String formattedDate = DateFormat('d, MMMM yyyy').format(DateTime.now());
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Today',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 4),
          Text(
            formattedDate,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(height: 8),
          Container(
            height: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _buildStatsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: _buildStatCard('Current Streak', ' 7 days', Icons.whatshot, Colors.orange, width: 120, height: 150),
        ),
        SizedBox(width: 8),
        Expanded(
          child: _buildStatCard('Done', '\n4 days', Icons.check_circle, Colors.green, width: 120, height: 150),
        ),
        SizedBox(width: 8),
        Expanded(
          child: _buildStatCard('Skipped', '\n 3 days', Icons.cancel, Colors.red, width: 120, height: 150),
        ),
      ],
    );
  }

  Widget _buildStatCard(
      String title, String count, IconData icon, Color iconColor,
      {double width = 90, double height = 100}) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFFE5D1FA), // Use the specified color E5D1FA
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(count, style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 8),
          Icon(icon, color: iconColor, size: 32),
        ],
      ),
    );
  }

  Widget _buildAchievementSection() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Achieve from your goal',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            "You've been doing great today",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildCircularProgress() {
    return Center(
      child: CircularPercentIndicator(
        radius: 70.0,
        lineWidth: 10.0,
        animation: true,
        percent: 0.65,
        center: const Text(
          "65%",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: Colors.purple,
      ),
    );
  }

  void main() {
  runApp(MaterialApp(
    home: Progresspage(),
  ));
}}
