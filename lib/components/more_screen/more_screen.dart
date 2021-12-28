import 'package:flutter/material.dart';
import 'package:project_beta/components/more_screen/widgets/more_screen_web.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'widgets/more_screen_body.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: AppBarTemplate(
        backGroundColor: AppColor.backgroundColor,
        title: LanguageConstants.more,
        toolbarHeight: 16.h,
        elevation: 1,
        suffixWidget: IconButton(
          icon: Icon(
            Icons.search,
            color: AppColor.primaryColor,
            size: 28.w,
          ),
          onPressed: () {},
        ).setMarginOnly(
          right: 24.w,
        ),
        body: MoreScreenBody(),
      ),
      tablet: AppBarTemplate(
        backGroundColor: AppColor.backgroundColor,
        title: LanguageConstants.more,
        toolbarHeight: 16.h,
        elevation: 1,
        suffixWidget: IconButton(
          icon: Icon(
            Icons.search,
            color: AppColor.primaryColor,
            size: 28.w,
          ),
          onPressed: () {},
        ).setMarginOnly(
          right: 24.w,
        ),
        body: MoreScreenBody().setMarginSymmetric(
          horizontal: 80.w,
        ),
      ),
      desktop: WebTemplate(
        pageTitle: LanguageConstants.more,
        body: MoreScreenWeb().setMarginSymmetric(
          horizontal: 160.w,
        ),
      ),
    );
  }
}
