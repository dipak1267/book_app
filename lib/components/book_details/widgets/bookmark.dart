import 'package:flutter/material.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/src/common_widgets/circular_icon_container.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class BookmarkButton extends StatelessWidget {
  const BookmarkButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialTemplate(
      child: CircularIconContainer(
        avatar: AppAssets.bookmark,
        padding: 15,
        iconBackgroundColor: AppColor.white,
        height: 24.h,
      ),
      radius: 48.w,
      backGroundColor: AppColor.lightYellow,
      elevation: 5,
    );
  }
}
