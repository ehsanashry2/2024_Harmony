import 'package:flutter/material.dart';

class SuggestMessage extends StatelessWidget {
  const SuggestMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0x8FFFFFFF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Hello, how are you today?',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                fontFamily: 'WorkSans',
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color(0x8FFFFFFF),
              borderRadius: BorderRadius.circular(20)),
          child: const Text(
            'Thank you',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              fontFamily: 'WorkSans',
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}