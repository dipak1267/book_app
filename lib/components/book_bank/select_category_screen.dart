import 'package:flutter/material.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'web/select_category_web.dart';
import 'widgets/select_category_body.dart';

class SelectCategoryScreen extends StatelessWidget {
  const SelectCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: AppBarTemplate(
        title: LanguageConstants.selectCategory,
        backGroundColor: AppColor.lightYellow,
        suffixWidget: Container(),
        toolbarHeight: 16.h,
        body: SelectCategoryBody(),
      ),
      tablet: AppBarTemplate(
        title: LanguageConstants.selectCategory,
        backGroundColor: AppColor.lightYellow,
        suffixWidget: Container(),
        toolbarHeight: 18.h,
        body: SelectCategoryBody(),
      ),
      desktop: WebTemplate(
        pageTitle: LanguageConstants.selectCategory,
        body: SelectCategoryWeb().setMarginSymmetric(
          horizontal: 24.w,
          vertical: 16.h,
        ),
      ),
    );
  }
}
