import 'package:flutter/material.dart';

import '../readingwidget/day_selector.dart';
import '../readingwidget/frequency_selector.dart';
import '../readingwidget/icon_color_picker.dart';
import '../readingwidget/time_of_day_selector.dart';
import '../readingwidget/time_picker.dart';

class Reading extends StatelessWidget {
  const Reading({super.key});

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
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Reading',
                  hintStyle: TextStyle(
                    color: Colors.grey,  // اللون الأساسي للنص
                  ),
                ),
                style: TextStyle(
                  color: Colors.grey,  // لون النص المدخل
                ),
              ),
            ),
            const SizedBox(height: 20),
         //   const IconColorPicker(),
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
