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

  void _toggleButtonColor(String text) {
    setState(() {
      _buttonColors[text] = _buttonColors[text] == const Color(0xff808080)
          ? const Color(0xffAA77FF)
          : const Color(0xff808080);
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
        const Center(
          child: CustomButton(
            text: 'Every Day',
            backgroundColor: Color(0xffAA77FF),
          ),
        )
      ],
    );
  }

  Widget _buildDayButton(String text) {
    return GestureDetector(
      onTap: () => _toggleButtonColor(text),
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

  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
  });

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
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: "work-sans",
        ),
      ),
    );
  }
}
