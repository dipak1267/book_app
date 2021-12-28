import 'package:flutter/material.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_text_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'web/profile_screen_web.dart';
import 'widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: SliverAppBarTemplate(
        title: LanguageConstants.myDetails,
        subTitle: 'Complete your profile',
        fontSize: 16.sp,
        trialWidgetEnabled: true,
        trailingWidget: AppTextButton2(
          label: LanguageConstants.skip,
          fontColor: AppColor.secondaryColor,
          fontSize: 16.sp,
        ),
        expandedHeight: 56.h,
        body: ProfileBody().setMarginSymmetric(
          horizontal: 24.w,
        ),
      ),
      tablet: SliverAppBarTemplate(
        title: LanguageConstants.myDetails,
        subTitle: 'Complete your profile',
        fontSize: 18.sp,
        trialWidgetEnabled: true,
        trailingWidget: AppTextButton2(
          label: LanguageConstants.skip,
          fontColor: AppColor.secondaryColor,
          fontSize: 16.sp,
        ),
        expandedHeight: 56.h,
        body: ProfileBody().setMarginSymmetric(
          horizontal: 32.w,
        ),
      ),
      desktop: ProfileScreenWeb(),
    );
  }
}
