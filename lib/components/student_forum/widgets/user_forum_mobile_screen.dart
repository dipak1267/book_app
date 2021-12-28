import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/components/student_forum/widgets/filter_bottom_sheet.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_floating_action_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'user_forum_body.dart';

class UserForumMobileScreen extends StatelessWidget {
  static const pageLink = "/UserDiscussionForum";

  @override
  Widget build(BuildContext context) {
    return AppBarTemplate(
      backGroundColor: AppColor.pampas,
      toolbarHeight: 18.h,
      elevation: 1,
      centerTitle: true,
      title: LanguageConstants.studentForum.toUpperCase(),
      suffixWidget: GestureDetector(
        onTap: () => FilterBottomSheet.get(context),
        child: SvgPicture.asset(
          AppAssets.filter,
          color: AppColor.primaryColor,
        ).setMarginOnly(
          right: 24.w,
        ),
      ),
      floatingActionButton: AppFloatingActionButton(
        onTap: () => Beamer.of(context).beamToNamed(AppRoutes.addPost),
      ),
      body: UserForumBody(),
    );
  }
}
