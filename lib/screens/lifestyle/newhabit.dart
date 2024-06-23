import 'package:flutter/material.dart';

import '../readingwidget/day_selector.dart';
import '../readingwidget/frequency_selector.dart';
import '../readingwidget/icon_color_picker.dart'; // Make sure the import path is correct
import '../readingwidget/time_of_day_selector.dart';
import '../readingwidget/time_picker.dart';

class NewHabit extends StatefulWidget {
  @override
  _NewHabitState createState() => _NewHabitState();
}

class _NewHabitState extends State<NewHabit> {
  final TextEditingController _controller = TextEditingController();
  Color _selectedColor = Colors.grey;

  void _updateSelectedColor(Color color, IconData icon) {
    setState(() {
      _selectedColor = color;
      // You can also update the selected icon here if needed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'New habit',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "work-sans",
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Check if the habit name is not empty
              if (_controller.text.isNotEmpty) {
                Navigator.pop(context, {
                  'name': _controller.text,
                  'color': _selectedColor,
                  // You may also pass the selected icon here if needed
                });
              } else {
                // Show a dialog or snackbar indicating that habit name is required
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Error'),
                    content: Text('Please enter a habit name.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              }
            },
            child: const Text(
              'Done',
              style: TextStyle(
                color: Color(0xffAA77FF),
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: "work-sans",
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 55,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Habit name...',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 20),
            IconColorPicker(
              onSelectionChanged: _updateSelectedColor, // Pass the callback here
            ),
            const SizedBox(height: 20),
            const FrequencySelector(),
            const SizedBox(height: 20),
            const DaySelector(),
            const SizedBox(height: 20),
            const TimeOfDaySelector(),
            const SizedBox(height: 20),
            const TimePicker(),
          ],
        ),
      ),
    );
  }
}
