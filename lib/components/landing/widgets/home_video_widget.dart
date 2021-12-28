import 'package:flutter/material.dart';
import 'package:project_beta/src/common_widgets/app_video_player.dart';
import 'package:project_beta/src/screen_utils.dart';

class HomeVideoWidget extends StatelessWidget {
  final String? videoTitle;

  const HomeVideoWidget({Key? key, this.videoTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 72.h,
          width: 280.w,
          child: AppVideoPlayerWidget(
            'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          videoTitle!,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
