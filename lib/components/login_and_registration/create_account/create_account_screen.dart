import 'package:flutter/material.dart';
import 'package:project_beta/components/login_and_registration/create_account/web/create_account_web.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/desktop_wrapper.dart';
import 'package:project_beta/src/template/responsive.dart';

import 'widgets/create_account_body.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: SliverAppBarTemplate(
        body: CreateAccountBody(),
        title: LanguageConstants.createAccount,
        subTitle: LanguageConstants.letsGetYouUpAllDetails,
        expandedHeight: 56.h,
        fontSize: 16.sp,
        subTitleFontSize: 10.sp,
      ),
      tablet: SliverAppBarTemplate(
        body: CreateAccountBody(),
        title: LanguageConstants.createAccount,
        subTitle: LanguageConstants.letsGetYouUpAllDetails,
        expandedHeight: 64.h,
        fontSize: 18.sp,
        subTitleFontSize: 12.sp,
      ),
      desktop: DesktopWrapper(
        child: CreateAccountWeb().setMarginSymmetric(
          horizontal: 48.w,
        ),
      ),
    );
  }
}
