import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  final String imagePath;
  final List<Color> gradientColors;

  const CategoryButton({
    Key? key,
    required this.label,
    required this.imagePath,
    required this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius:
            const BorderRadius.all(Radius.circular(10.0)), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              imagePath,
              width: 47,
              height: 45,
            ),
          ),
        ],
      ),
    );
  }
}
