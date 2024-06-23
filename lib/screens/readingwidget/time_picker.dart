import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  String _selectedButton = 'AM';
  TimeOfDay _selectedTime = const TimeOfDay(hour: 9, minute: 0); // تعيين الوقت الافتراضي إلى الساعة 9:00 صباحًا

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

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => _selectTime(context),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xffE5D1FA),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xffAA77FF)),
                ),
                child: Text(
                  '${_selectedTime.hour}:${_selectedTime.minute.toString().padLeft(2, '0')}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
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

