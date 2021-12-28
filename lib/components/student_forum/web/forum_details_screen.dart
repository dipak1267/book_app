import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/components/student_forum/widgets/filter_bottom_sheet.dart';
import 'package:project_beta/components/student_forum/widgets/forum_detail_body.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/user_forum_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class ForumDetailsScreen extends StatelessWidget {
  const ForumDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: AppBarTemplate(
        backGroundColor: AppColor.pampas,
        toolbarHeight: 18.h,
        elevation: 1,
        centerTitle: true,
        title: LanguageConstants.discussionForum.toUpperCase(),
        suffixWidget: GestureDetector(
          onTap: () => FilterBottomSheet.get(context),
          child: SvgPicture.asset(
            AppAssets.filter,
            color: AppColor.primaryColor,
          ).setMarginOnly(
            right: 24.w,
          ),
        ),
        body: ForumDetailBody(),
      ),
      tablet: AppBarTemplate(
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
        body: ForumDetailBody(),
      ),
      desktop: ForumDetailsWeb(),
    );
  }
}

class ForumDetailsWeb extends StatelessWidget {
  final UserForumModel? userForumModel;

  const ForumDetailsWeb({Key? key, this.userForumModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebTemplate(
      pageTitle: LanguageConstants.discussionForum,
      body: ForumDetailBody(),
    );
  }
}
