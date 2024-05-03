import 'package:flutter/material.dart';

class ResponsingChat extends StatelessWidget {
  const ResponsingChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color(0x851A1A1A),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Text(
            "Hi, How can I assist you today?",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'WorkSans',
              color: Colors.white,
            ),
          )),
    );
  }
}
