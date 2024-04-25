import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questions;
  const Question({
    super.key,
    required this.questions,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 340,
          height: 97,
          margin: const EdgeInsets.only(top: 80.0, left: 18.0, right: 18),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffDCC1FF),
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  const BoxShadow(
                    color: Color(0xffAA77FF),
                    offset: Offset(0, 1),
                    blurRadius: 6.7,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  questions,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'WorkSans',
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
