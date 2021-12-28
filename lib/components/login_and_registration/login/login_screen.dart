import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/auth/auth_controller.dart';
import 'package:project_beta/controller/login/login_getx_controller.dart';
import 'package:project_beta/services/auth/auth.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/desktop_wrapper.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'web/login_web.dart';
import 'widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  final LoginGetXController loginTabsGetXController = LoginGetXController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) {
          if (controller.currentUser.email == null) {
            return _LoginWidget();
          } else {
            AuthService().navigate(
              context,
              controller.currentUser,
              controller.roleId,
            );
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}

class _LoginWidget extends StatelessWidget {
  const _LoginWidget({
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
          child: LoginBody(),
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
          child: LoginBody(),
        ),
        backgroundColor: AppColor.primaryColor,
        title: LanguageConstants.welcomeBack,
        subTitle: LanguageConstants.loginToContinue,
        fontSize: 20.sp,
        subTitleFontSize: 18.sp,
        expandedHeight: 88.h,
      ),
      desktop: DesktopWrapper(
        child: LoginWeb(),
      ),
    );
  }
}
