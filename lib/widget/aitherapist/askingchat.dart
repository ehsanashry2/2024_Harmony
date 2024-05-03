import 'package:flutter/material.dart';

class AskingChat extends StatefulWidget {
  const AskingChat({super.key});

  @override
  State<AskingChat> createState() => _AskingChatState();
}

class _AskingChatState extends State<AskingChat> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color(0xFFAB93E0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: const Text(
            "Hello",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'WorkSans',
              color: Colors.white,
            ),
          ),
        ));
  }
}
