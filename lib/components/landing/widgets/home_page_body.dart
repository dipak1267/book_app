import 'package:flutter/material.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';

import 'category_widget.dart';
import 'profile_completion_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView(
            children: [
              ProfileCompletionWidget().setMarginOnly(
                bottom: 8.h,
              ),
              CategoryWidget().setMarginOnly(
                bottom: 8.h,
              ),
              Text(
                LanguageConstants.recommendedVideos,
                style: Theme.of(context).textTheme.subtitle2,
              ).setMarginOnly(
                bottom: 8.h,
              ),
              // HomeVideoWidget(
              //   videoTitle: 'Sample Video',
              // ).setMarginOnly(
              //   bottom: 8.h,
              // ),
            ],
          ),
        )
      ],
    );
  }
}
