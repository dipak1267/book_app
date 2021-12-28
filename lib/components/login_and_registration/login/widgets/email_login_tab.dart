import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/services/auth/google.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/controller/login/login_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_check_box.dart';
import 'package:project_beta/src/common_widgets/app_text_button.dart';
import 'package:project_beta/src/common_widgets/app_text_form_field.dart';
import 'package:project_beta/src/common_widgets/facebook_login_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'or_login_with_widget.dart';

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginGetXController>(
      init: LoginGetXController(),
      builder: (controller) {
        return ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            AppTextFormField(
              title: 'Email Id',
              titleSpacing: 4,
              controller: controller.emailController,
              hintText: 'Enter email',
              prefixIcon: Icon(
                Icons.email_outlined,
                size: 24.w,
                color: AppColor.primaryColor,
              ),
            ).setMarginOnly(
              bottom: 3.h,
            ),
            AppTextFormField(
              title: 'Password',
              titleSpacing: 4,
              controller: controller.passwordController,
              hintText: 'Enter password',
              prefixIcon: Icon(
                Icons.lock_outline,
                size: 24.w,
                color: AppColor.primaryColor,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppCheckBox(
                  value: controller.checkValue.value,
                  onChanged: (bool? value) {
                    controller.onCheckBoxClicked(value!);
                    print('value :$value');
                  },
                  label: 'Remember Me',
                  checkColor: AppColor.primaryColor,
                  activeColor: AppColor.secondaryColor,
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.subtitle2!,
                  ),
                ),
              ],
            ).setMarginOnly(
              bottom: 4.h,
            ),
            AppButton(
              height: 22.h,
              label: 'LOGIN NOW',
              onTap: () {
                controller.onLogin(context);
              },
              backgroundColor: AppColor.primaryColor,
              textColor: AppColor.backgroundColor,
              fontWeight: FontWeight.w600,
            ).setMarginOnly(
              bottom: 8.h,
            ),
            OrLoginWithWidget(
              label: 'OR LOGIN WITH',
            ).setMarginOnly(
              bottom: 8.h,
            ),
            FacebookGoogleLoginWidget(
              facebookLogin: () {},
              googleLogin: () async {
                print("got google callback");
                await GoogleAuthentication.signInWithGoogle(context: context);
              },
              height: 20,
            ).setMarginOnly(
              bottom: 12.h,
              left: 32.w,
              right: 32.w,
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
      },
    );
  }
}
