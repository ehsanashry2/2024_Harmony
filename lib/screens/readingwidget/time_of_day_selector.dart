import 'package:flutter/material.dart';

class TimeOfDaySelector extends StatefulWidget {
  const TimeOfDaySelector({super.key});

  @override
  State<TimeOfDaySelector> createState() => _TimeOfDaySelectorState();
}

class _TimeOfDaySelectorState extends State<TimeOfDaySelector> {
  String _selectedButton = '';
  bool _isOnceAtAnyTimeSelected = false;

  void _toggleButtonColor(String text) {
    setState(() {
      if (text == 'Once at any time') {
        if (!_isOnceAtAnyTimeSelected) {
          _isOnceAtAnyTimeSelected = true;
          _selectedButton = text;
        } else {
          _isOnceAtAnyTimeSelected = false;
          _selectedButton = '';
        }
      } else {
        _isOnceAtAnyTimeSelected = false;
        if (_selectedButton == text) {
          _selectedButton = '';
        } else {
          _selectedButton = text;
        }
      }
    });
  }

  Color _getButtonColor(String text) {
    if (_isOnceAtAnyTimeSelected && text != 'Once at any time') {
      return const Color(0xff808080);
    }
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
        GestureDetector(
          onTap: () => _toggleButtonColor('Once at any time'),
          child: Center(
            child: CustomButton(
              text: 'Once at any time',
              backgroundColor: _getButtonColor('Once at any time'),
              isSelected: _isOnceAtAnyTimeSelected,
              fontSize: 19.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFrequencyButton(String text) {
    return GestureDetector(
      onTap: _isOnceAtAnyTimeSelected ? null : () => _toggleButtonColor(text),
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

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final bool isSelected;
  final double fontSize;

  const CustomButton({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.isSelected,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 100),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: "work-sans",
        ),
      ),
    );
  }
}
