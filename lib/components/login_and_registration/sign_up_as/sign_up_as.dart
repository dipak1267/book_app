import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project_beta/components/login_and_registration/sign_up_as/web/sign_up_as_web.dart';

import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/auth/auth_controller.dart';
import 'package:project_beta/services/auth/auth.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/desktop_wrapper.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'widgets/sign_up_as_body.dart';

class SignUpAsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) {
          if (controller.currentUser.email == null) {
            return Responsive(
              mobile: SliverAppBarTemplate(
                body: SignUpAsBody(),
                backgroundColor: AppColor.primaryColor,
                title: LanguageConstants.signUpAs,
                fontSize: 18.sp,
                expandedHeight: 60.h,
                leading: false,
              ),
              tablet: SliverAppBarTemplate(
                body: SignUpAsBody(),
                backgroundColor: AppColor.primaryColor,
                title: LanguageConstants.signUpAs,
                fontSize: 18.sp,
                expandedHeight: 60.h,
                leading: false,
              ),
              desktop: DesktopWrapper(
                child: SignUpAsWeb(),
              ),
            );
          } else {
            AuthService()
                .navigate(context, controller.currentUser, controller.roleId);
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
