import 'package:flutter/material.dart';
import 'package:project_beta/components/login_and_registration/login/widgets/mobile_login_tab.dart';
import 'package:project_beta/components/login_and_registration/verification/widget/mobile_otp.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/desktop_wrapper.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';
import 'package:project_beta/src/screen_utils.dart';

class MobileOTP extends StatelessWidget {
  const MobileOTP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: SliverAppBarTemplate(
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.w),
              topRight: Radius.circular(16.w),
            ),
          ),
          child: MobileScreen(),
        ),
        backgroundColor: AppColor.primaryColor,
        title: LanguageConstants.welcomeBack,
        subTitle: LanguageConstants.loginToContinue,
        fontSize: 18.sp,
        subTitleFontSize: 14.sp,
        expandedHeight: 64.h,
      ),
      tablet: SliverAppBarTemplate(
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.w),
              topRight: Radius.circular(16.w),
            ),
          ),
          child: MobileScreen(),
        ),
        backgroundColor: AppColor.primaryColor,
        title: LanguageConstants.welcomeBack,
        subTitle: LanguageConstants.loginToContinue,
        fontSize: 20.sp,
        subTitleFontSize: 18.sp,
        expandedHeight: 88.h,
      ),
      desktop: DesktopWrapper(
        child: MobileBody(),
      ),
    );
  }
}
