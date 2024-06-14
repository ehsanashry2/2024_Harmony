import 'package:flutter/material.dart';
import 'package:ocd/widget/readingwidget/day_selector.dart';
import 'package:ocd/widget/readingwidget/frequency_selector.dart';
import 'package:ocd/widget/readingwidget/icon_color_picker.dart';
import 'package:ocd/widget/readingwidget/time_of_day_selector.dart';
import 'package:ocd/widget/readingwidget/time_picker.dart';

class Reading extends StatelessWidget {
  const Reading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
            child: Text('Reading',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: "work-sans"))),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Done',
                style: TextStyle(
                    color: Color(0xffAA77FF),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: "work-sans")),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            IconColorPicker(),
            SizedBox(height: 20),
            FrequencySelector(),
            SizedBox(height: 20),
            DaySelector(),
            SizedBox(height: 20),
            TimeOfDaySelector(),
            SizedBox(height: 20),
            TimePicker(),
          ],
        ),
      ),
    );
  }
}
