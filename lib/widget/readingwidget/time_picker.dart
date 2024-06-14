import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  String _selectedButton = 'AM';

  void _toggleButtonColor(String text) {
    setState(() {
      _selectedButton = text;
    });
  }

  Color _getButtonColor(String text) {
    return _selectedButton == text
        ? const Color(0xffAA77FF)
        : Colors.grey[300]!;
  }

  Color _getTextColor(String text) {
    return _selectedButton == text ? Colors.white : Colors.black;
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
                'We will send you a reminder at',
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xffE5D1FA),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xffAA77FF)),
              ),
              child: const Text('9:00'),
            ),
            Row(
              children: [
                _buildAmPmButton('AM'),
                const SizedBox(width: 10), // Add space between buttons
                _buildAmPmButton('PM'),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget _buildAmPmButton(String text) {
    return GestureDetector(
      onTap: () => _toggleButtonColor(text),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: _getButtonColor(text),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: _getTextColor(text),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
