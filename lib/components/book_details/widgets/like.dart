import 'package:flutter/material.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/src/common_widgets/circular_icon_container.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialTemplate(
      child: CircularIconContainer(
        avatar: AppAssets.like,
        padding: 12,
        iconBackgroundColor: AppColor.white,
        height: 24.h,
      ),
      radius: 48.w,
      elevation: 5,
    );
  }
}
