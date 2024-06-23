import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoListScreen extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {
      'title': 'Focused breath',
      'videoUrl': 'https://www.youtube.com/watch?v=7Ep5mKuRmAA',
      'thumbnail': 'assets/images/breath.gif',
    },
    {
      'title': 'Reduce Stress through Progressive Muscle Relaxation',
      'videoUrl': 'https://www.youtube.com/watch?v=wfDTp2GogaQ',
      'thumbnail': 'assets/images/stress.gif',
    },
    {
      'title': 'Yoga For Anxiety and Stress',
      'videoUrl': 'https://www.youtube.com/watch?v=tEmt1Znux58',
      'thumbnail': 'assets/images/yoga.gif',
    },
  ];

  //VideoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Breathe',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: "work-sans"))),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return VideoCard(
            title: videos[index]['title']!,
            videoUrl: videos[index]['videoUrl']!,
            thumbnail: videos[index]['thumbnail']!,

            //thumbnail: videos[index]['thumbnail']!,
          );
        },
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  final String title;
  final String videoUrl;
  final String thumbnail;

  const VideoCard(
      {super.key,
      required this.title,
      required this.videoUrl,
      required this.thumbnail});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoPlayerScreen(videoUrl: videoUrl),
          ),
        );
      },
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              thumbnail,
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerScreen({super.key, required this.videoUrl});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Video Player', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        onReady: () {
          _controller.addListener(() {});
        },
      ),
    );
  }
}
