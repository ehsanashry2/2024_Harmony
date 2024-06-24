import 'package:flutter/material.dart';
import 'package:ocd/screens/breathe/breathepage.dart';
import 'package:ocd/screens/home/Home/layoutscreen.dart'; // Assuming this is your Home page
//import 'package:ocd/widgets/youtube_video_widget.dart';

class YouTubeVideoListScreen extends StatelessWidget {
  final List<String> videoUrls = [
    'https://www.youtube.com/watch?v=wfDTp2GogaQ&t=30s',
    'https://www.youtube.com/watch?v=6pskyKq7YSMT',
    'https://www.youtube.com/watch?v=7Ep5mKuRmAA',
    'https://www.youtube.com/watch?v=tEmt1Znux58H',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LayOutScreen()), // Replace LayOutScreen with your Home page
            );
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Text(
          'Breathe',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: videoUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: YouTubeVideoWidget(videoUrl: videoUrls[index]),
          );
        },
      ),
    );
  }
}
