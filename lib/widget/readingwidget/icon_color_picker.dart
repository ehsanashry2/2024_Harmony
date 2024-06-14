import 'package:flutter/material.dart';

class IconColorPicker extends StatelessWidget {
  const IconColorPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
            image: AssetImage("assets/images/book.png"), width: 40, height: 40),
        const Text("Icon",
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontFamily: "work-sans")),
        const Padding(
          padding: EdgeInsets.only(left: 100.0),
          child: Text('Color',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: "work-sans")),
        ),
        Row(
          children: [
            _buildColorBox(const Color(0xFFE5D1FA)),
            _buildColorBox(const Color(0xffECF2FF)),
            _buildColorBox(const Color(0xffE3DFFD)),
          ],
        ),
      ],
    );
  }

  Widget _buildColorBox(Color color) {
    return Container(
      width: 34,
      height: 32,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 4),
    );
  }
}
