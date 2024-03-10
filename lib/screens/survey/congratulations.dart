import 'package:flutter/material.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              radius: 0.8953,
              colors: [
                Color(0xFFE5D1FA), // Start color
                Color(0xFFAA77FF), // End color
              ],
              stops: [0, 1],
            ),
          ),
        ),
        const Text(
          'Congratulations',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            fontFamily: 'WorkSans',
            color: Colors.white,
          ),
        ),
        const Text(
          'You have completed the survey',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'WorkSans',
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
