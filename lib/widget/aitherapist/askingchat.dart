import 'package:flutter/material.dart';

class AskingChat extends StatelessWidget {
  const AskingChat({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            left:
                100, // This is a very specific value that might not work well on all screens.
            top: 76,
            child: Opacity(
              opacity:
                  0.0, // Completely transparent (invisible). If you want it visible, use values greater than 0.0.
              child: Transform.rotate(
                angle: -180 * 3.14159 / 180, // Converting degrees to radians
                child: Container(
                  width: 70, // Width in logical pixels
                  height: 59, // Height in logical pixels
                  color: Color.fromARGB(255, 84, 56, 145), // Hex color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
