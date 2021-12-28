import 'package:flutter/material.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_close_button.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/web_template/web_template.dart';

import 'widgets/add_ceritification_body.dart';

class AddCertification extends StatelessWidget {
  static final pageLink = "/AddCertification";

  @override
  Widget build(BuildContext context) {
    return Responsive(
      tablet: SliverAppBarTemplate(
        title: LanguageConstants.addCertification,
        expandedHeight: 56.h,
        fontSize: 16.sp,
        trialWidgetEnabled: true,
        trailingWidget: AppCloseButton(),
        body: AddCertificationBody(),
      ),
      mobile: SliverAppBarTemplate(
        title: LanguageConstants.addCertification,
        expandedHeight: 56.h,
        fontSize: 16.sp,
        trialWidgetEnabled: true,
        trailingWidget: AppCloseButton(),
        body: AddCertificationBody(),
      ),
      desktop: WebTemplate(
        pageTitle: LanguageConstants.addCertification,
        body: AddCertificationBody().setMarginSymmetric(
          horizontal: 48.w,
          vertical: 16.h,
        ),
      ),
    );
  }
}
