import 'package:flutter/material.dart';

class CustomSurveyButtom extends StatelessWidget {
  const CustomSurveyButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99, // Adjust as needed
      height: 99, // Adjust as needed
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 170, 128,
              238), // Transparent border color to hide the solid border
          width: 4, // Adjust border width as needed
        ),
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Colors.white, // Inner circle color
            Color(0xFFE3DFFD), // End color
          ],
          stops: [0.1242, 0.8177], // Adjust stop positions
        ),
      ),
      child: Center(
        child: Container(
          width: 77, // Adjust as needed
          height: 77, // Adjust as needed
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFFAA77FF), // Start color
                Color(0xFFD932D2),
              ],
            ),
          ),
          child: const Center(
            child: Text(
              'Done',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: 'WorkSans',
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
