import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String url;

  VideoPlayerScreen({required this.url});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize YoutubePlayerController
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.url) ?? 'No Internet Connection',
      flags: const YoutubePlayerFlags(
        forceHD: true,
        enableCaption: false,
        hideThumbnail: true,
        autoPlay: false,  // Auto play when the video loads
        mute: false,     // You can change this if you want the video to start muted
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
    return YoutubePlayer(
        aspectRatio: 16/10,
        controller: _controller,
        showVideoProgressIndicator: true,
        onReady: () {
          print("Player is ready.");
        }
        );
  }
}
