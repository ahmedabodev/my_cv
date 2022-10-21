import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoPlayerScreen extends StatefulWidget {
  String? url;

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();

  VideoPlayerScreen({
    this.url,
  });
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
void changed(){
  _controller = VideoPlayerController.asset(widget.url!);

  // Initialize the controller and store the Future for later use.
  _initializeVideoPlayerFuture = _controller.initialize();

  // Use the controller to loop the video.
  _controller.setLooping(true);

  setState(() {

  });
}
  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // // or the internet.
    // _controller = VideoPlayerController.asset(widget.url!);
    //
    // // Initialize the controller and store the Future for later use.
    // _initializeVideoPlayerFuture = _controller.initialize();
    //
    // // Use the controller to loop the video.
    // _controller.setLooping(true);
    changed();
    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 300,
      height: 300,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            // Use the VideoPlayer widget to display the video.
            child: VideoPlayer(_controller),
          ),
          IconButton(onPressed: () {
            // Wrap the play or pause in a call to `setState`. This ensures the
            // correct icon is shown.
            setState(() {
              // If the video is playing, pause it.
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                // If the video is paused, play it.
                _controller.play();
              }
            });
          },
            // Display the correct icon depending on the state of the player.
            icon: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),)
        ],
      ),
    );

  }


}