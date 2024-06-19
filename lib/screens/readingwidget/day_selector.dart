import 'package:flutter/material.dart';

class DaySelector extends StatefulWidget {
  const DaySelector({super.key});

  @override
  State<DaySelector> createState() => _DaySelectorState();
}

class _DaySelectorState extends State<DaySelector> {
  final Map<String, Color> _buttonColors = {
    'Sun': const Color(0xff808080),
    'Mon': const Color(0xff808080),
    'Tue': const Color(0xff808080),
    'Wed': const Color(0xff808080),
    'Thu': const Color(0xff808080),
    'Fri': const Color(0xff808080),
    'Sat': const Color(0xff808080),
  };

  Color _everyDayButtonColor = const Color(0xff808080);
  bool _isEveryDaySelected = false;

  void _toggleButtonColor(String text) {
    setState(() {
      if (text == 'Every Day') {
        _everyDayButtonColor = _everyDayButtonColor == const Color(0xff808080)
            ? const Color(0xffAA77FF)
            : const Color(0xff808080);
        _isEveryDaySelected = !_isEveryDaySelected;

        // Disable individual day buttons if Every Day is selected
        if (_isEveryDaySelected) {
          _buttonColors.forEach((key, value) {
            _buttonColors[key] = const Color(0xff808080);
          });
        }
      } else {
        _buttonColors[text] = _buttonColors[text] == const Color(0xff808080)
            ? const Color(0xffAA77FF)
            : const Color(0xff808080);
        _isEveryDaySelected = false;
      }
    });
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
                'On these days',
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
            _buildDayButton('Sun'),
            _buildDayButton('Mon'),
            _buildDayButton('Tue'),
            _buildDayButton('Wed'),
            _buildDayButton('Thu'),
            _buildDayButton('Fri'),
            _buildDayButton('Sat'),
          ],
        ),
        GestureDetector(
          onTap: () => _toggleButtonColor('Every Day'),
          child: Center(
            child: CustomButton(
              text: 'Every Day',
              backgroundColor: _everyDayButtonColor,
              isSelected: _isEveryDaySelected,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDayButton(String text) {
    return GestureDetector(
      onTap: () {
        if (!_isEveryDaySelected) {
          _toggleButtonColor(text);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: _buttonColors[text],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 12,
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

  const CustomButton({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.isSelected,
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
          fontSize: 20,
          color: Colors.white, // Always white text
          fontWeight: FontWeight.w500,
          fontFamily: "work-sans",
        ),
      ),
    );
  }
}
