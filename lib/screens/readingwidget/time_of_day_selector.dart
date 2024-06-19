import 'package:flutter/material.dart';


class TimeOfDaySelector extends StatefulWidget {
  const TimeOfDaySelector({super.key});

  @override
  State<TimeOfDaySelector> createState() => _TimeOfDaySelectorState();
}

class _TimeOfDaySelectorState extends State<TimeOfDaySelector> {
  String _selectedButton = '';

  void _toggleButtonColor(String text) {
    setState(() {
      _selectedButton = text;
    });
  }

  Color _getButtonColor(String text) {
    return _selectedButton == text
        ? const Color(0xffAA77FF)
        : const Color(0xff808080);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Expanded(
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'I Will do it once in the',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff808080),
                ),
              ),
            ),
            Expanded(
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildFrequencyButton('Morning'),
            _buildFrequencyButton('Afternoon'),
            _buildFrequencyButton('Evening'),
          ],
        ),
      //  const CustomButton(
        //    text: "Once at any time", backgroundColor: Color(0xff808080)),
      ],
    );
  }

  Widget _buildFrequencyButton(String text) {
    return GestureDetector(
      onTap: () => _toggleButtonColor(text),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: _getButtonColor(text),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontFamily: "work-sans",
          ),
        ),
      ),
    );
  }
}