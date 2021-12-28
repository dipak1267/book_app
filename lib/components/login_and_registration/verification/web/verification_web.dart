import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project_beta/components/login_and_registration/verification/widget/otp_number_widget.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/controller/login/login_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_list_tyle.dart';
import 'package:project_beta/src/common_widgets/app_text_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class VerificationWeb extends StatelessWidget {
  VerificationWeb({Key? key}) : super(key: key);
  final LoginGetXController loginTabsGetXController = LoginGetXController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginGetXController>(
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
                bottom: 4.h,
                top: 8.h,
              ),
              AppListTile(
                title: 'Verification',
                titleTextStyle: Theme.of(context).textTheme.headline4!.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                subTitle:
                    'Please enter the verification code sent to your email',
                subTitleTextStyle:
                    Theme.of(context).textTheme.headline5!.copyWith(
                          color: AppColor.darkBackgroundColor.withOpacity(
                            0.5,
                          ),
                        ),
              ).setMarginOnly(
                bottom: 24.h,
              ),
              OtpNumberWidget(
                width: 0,
                controller: controller,
              ).setMarginOnly(
                bottom: 12.h,
              ),
              AppButton(
                height: 28.h,
                label: 'VERIFY',
                onTap: () async {
                  await controller.onOtp(context);
                },
                fontSize: 20.sp,
                backgroundColor: AppColor.primaryColor,
                textColor: AppColor.backgroundColor,
                fontWeight: FontWeight.w500,
              ).setMarginOnly(
                bottom: 16.h,
                top: 12.h,
                left: 32.w,
                right: 32.w,
              ),
              AppTextButton1(
                text1: 'Didn\'t receive OTP?\n\n',
                text2: 'Resend Now',
                onTap: () {},
              ).setMarginOnly(
                bottom: 12.h,
              )
            ],
          ).setMarginSymmetric(
            horizontal: 48.w,
            vertical: 16.h,
          );
        });
  }
}
