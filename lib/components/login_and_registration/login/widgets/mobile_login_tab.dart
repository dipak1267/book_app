import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/controller/login/mobile_login_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_text_button.dart';
import 'package:project_beta/src/common_widgets/facebook_login_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'or_login_with_widget.dart';
import 'phone_number_widget.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MobileLoginGetXController>(
        init: MobileLoginGetXController(),
        builder: (controller) {
          return ListView(
            shrinkWrap: true,
            children: [
              PhoneNumberWidget(
                controller: controller.phoneController,
                initialSelection: controller.dialCode,
                onChanged: (value) {
                  controller.setDialCode(value.dialCode!);
                },
              ).marginOnly(
                top: 12.h,
                bottom: 6.h,
              ),
              AppButton(
                height: 22.h,
                label: 'GET OTP',
                onTap: () async {
                  await controller.onPhoneLogin(context);
                },
                backgroundColor: AppColor.primaryColor,
                textColor: AppColor.backgroundColor,
                fontWeight: FontWeight.w700,
              ).setMarginOnly(
                bottom: Responsive.isDesktop(context) ? 32.h : 12.h,
              ),
              OrLoginWithWidget(
                label: 'Or Login with',
                isDividerRequired: false,
              ).setMarginOnly(
                bottom: Responsive.isDesktop(context) ? 32.h : 12.h,
              ),
              FacebookGoogleLoginWidget(
                facebookLogin: () {},
                googleLogin: () {},
                height: 20,
              ).setMarginOnly(
                bottom: 12.h,
                left: Responsive.isDesktop(context) ? 48.w : 24.w,
                right: Responsive.isDesktop(context) ? 48.w : 24.w,
              ),
              AppTextButton1(
                text1: 'If you don\'t have an account,\t',
                text2: 'Create Account',
                onTap: () {
                  Beamer.of(context).beamToNamed(AppRoutes.createAccount);
                },
              ).setMarginOnly(
                bottom: 16.h,
              ),
            ],
          ).setMarginSymmetric(
            horizontal: Responsive.isMobile(context)
                ? 0
                : Responsive.isTablet(context)
                    ? 8.w
                    : 48.w,
            vertical: 4.h,
          );
        });
  }
}
