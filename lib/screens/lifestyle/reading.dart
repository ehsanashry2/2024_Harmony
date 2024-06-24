import 'package:flutter/material.dart';
import '../readingwidget/day_selector.dart';
import '../readingwidget/frequency_selector.dart';
import '../readingwidget/icon_color.dart';
import '../readingwidget/time_of_day_selector.dart';
import '../readingwidget/time_picker.dart';

class Reading extends StatefulWidget {
  @override
  _ReadingState createState() => _ReadingState();
}

class _ReadingState extends State<Reading> {
  late String _name;
  late Color _color;
  late IconData _icon;

  @override
  void initState() {
    super.initState();
    _name = 'Reading';
    _color = Color(0xFFE5D1FA);
    _icon = Icons.book;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Reading',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 20),
            IconColor(
              onSelectionChanged: (Color color, IconData icon) {
                setState(() {
                  _color = color;
                  _icon = icon;
                });
              },
            ),
            SizedBox(height: 20),
            FrequencySelector(),
            SizedBox(height: 20),
            DaySelector(),
            SizedBox(height: 20),
            TimeOfDaySelector(),
            SizedBox(height: 20),
            TimePicker(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'name': _name,
                  'color': _color,
                  'icon': _icon,
                });
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}


/*SizedBox(height: 20),
          IconColor(
            initialColor: _color,
            initialIcon: _icon,
            onSelectionChanged: (Color color, IconData icon) {
              setState(() {
                _color = color;
                _icon = icon;
              });
            },
          ),
          const SizedBox(height: 20),
          const FrequencySelector(),
          const SizedBox(height: 20),
          const DaySelector(),
          const SizedBox(height: 20),
          const TimeOfDaySelector(),
          const SizedBox(height: 20),
          const TimePicker(),*/
