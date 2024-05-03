import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double topMargin;
  final double leftMargin;
  final double rightMargin;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.topMargin,
    required this.leftMargin,
    required this.rightMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      margin: EdgeInsets.only(
        top: topMargin,
        left: leftMargin,
        right: rightMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xFFAA77FF),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "WorkSans",
          ),
        ),
      ),
    );
  }
}
