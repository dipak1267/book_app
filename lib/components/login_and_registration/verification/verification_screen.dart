import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project_beta/components/login_and_registration/verification/web/verification_web.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/controller/login/login_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_list_tyle.dart';
import 'package:project_beta/src/common_widgets/app_text_button.dart';
import 'package:project_beta/src/template/desktop_wrapper.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/extensions/common_extension.dart';

import 'widget/otp_number_widget.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Scaffold(
        body: VerificationBody(),
      ),
      tablet: Scaffold(
        body: VerificationBody(),
      ),
      desktop: DesktopWrapper(
        child: VerificationWeb(),
      ),
    );
  }
}

class VerificationBody extends StatelessWidget {
  VerificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GetBuilder<LoginGetXController>(
          init: LoginGetXController(),
          builder: (controller) {
            return Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: SvgPicture.asset(
                    AppAssets.verification,
                  ),
                ).setMarginOnly(
                  bottom: 8.h,
                  top: 32.h,
                ),
                AppListTile(
                  title: 'Verification',
                  titleTextStyle:
                      Theme.of(context).textTheme.headline4!.copyWith(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.w700,
                          ),
                  subTitle:
                      'Please enter the verification code sent to your email',
                  subTitleTextStyle:
                      Theme.of(context).textTheme.headline6!.copyWith(
                            color: AppColor.darkBackgroundColor.withOpacity(
                              0.5,
                            ),
                          ),
                ).setMarginOnly(
                  bottom: 6.h,
                ),
                OtpNumberWidget(
                  width: 2.w,
                  controller: controller,
                ).setMarginOnly(
                  bottom: 6.h,
                ),
                AppButton(
                  height: 24.h,
                  label: 'VERIFY',
                  onTap: () async {
                    await controller.onOtp(context);
                  },
                  backgroundColor: AppColor.primaryColor,
                  textColor: AppColor.backgroundColor,
                  fontWeight: FontWeight.w500,
                ).setMarginOnly(
                  bottom: 8.h,
                  top: 12.h,
                ),
                AppTextButton1(
                  text1: 'Didn\'t receive OTP?',
                  text2: 'Resend Now',
                  onTap: () {},
                ).setMarginOnly(
                  bottom: 12.h,
                )
              ],
            ).setMarginSymmetric(
              horizontal: Responsive.isMobile(context)
                  ? 24.w
                  : Responsive.isTablet(context)
                      ? 80.w
                      : 32.w,
              vertical: 16.h,
            );
          }),
    );
  }
}
