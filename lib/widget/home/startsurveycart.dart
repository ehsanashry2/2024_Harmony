import 'package:flutter/material.dart';

import '../../screens/survey/survey.dart';

class SurveyCart extends StatelessWidget {
  const SurveyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 180,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFDCC1FF), // Lighter purple
            Color(0xFFBA68C8), // Darker purple
          ],
        ),
      ),
      child: Stack(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(left: 100),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/images/Group (2).png',
              width: 165,
              height: 160,
              fit: BoxFit.fill,
            ),
          ),
          //),
          const Padding(
            padding: EdgeInsets.only(top:25.0),
            child: Text(
              "Are you suffering from OCD?\nHelp us improve your condition\nby completing our survey.",
              style: TextStyle(
                fontSize: 13.9,
                fontWeight: FontWeight.w500,
                fontFamily: 'WorkSans',
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 100),
            width: 147,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15) // Outer circle color
                ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Survey()),
                );
              },
              child: const Text(
                'Start Survey',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'WorkSans',
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
