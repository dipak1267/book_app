import 'package:flutter/material.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:video_player/video_player.dart';

class AppVideoPlayerWidget extends StatefulWidget {
  final String link;

  const AppVideoPlayerWidget(
    this.link,
  );

  @override
  _AppVideoPlayerWidgetState createState() => _AppVideoPlayerWidgetState();
}

class _AppVideoPlayerWidgetState extends State<AppVideoPlayerWidget> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _initializeController();
  }

  void _initializeController() {
    if (widget.link.isEmpty) {
      _controller = null;
    } else {
      _controller = VideoPlayerController.network(
        widget.link,
      )
        ..addListener(() {})
        ..setLooping(false)
        ..initialize().then((_) {
          _controller?.pause();
          setState(() {});
        });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller!.value.isInitialized
        ? ClipRRect(
            borderRadius: BorderRadius.circular(48.w),
            child: VideoPlayer(_controller!),
          )
        : Container();
  }
}
