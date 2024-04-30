import 'package:flutter/material.dart';
import 'package:ocd/widget/aitherapist/askingchat.dart';

class AiTherapist extends StatelessWidget {
  const AiTherapist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFECF2FF), // Light blue
              Color(0xFFE5D1FA), // Light purple
              Color(0xFFE3DFFD), // Periwinkle
            ],
            stops: [
              0.0,
              0.413,
              1.0
            ], // Stops corresponding to gradient progression
          ),
        ),
        child: const Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [AskingChat()],
            )));
  }
}
