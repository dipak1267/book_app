import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/login_and_registration/login/widgets/phone_number_widget.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/controller/login/mobile_login_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_list_tyle.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class MobileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MobileLoginGetXController>(
        init: MobileLoginGetXController(),
        builder: (controller) {
          return ListView(
            shrinkWrap: true,
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
                title: 'Verify Phone Number',
                titleTextStyle: Theme.of(context).textTheme.headline4!.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                subTitle:
                    'Please enter the your mobile number for verification',
                subTitleTextStyle:
                    Theme.of(context).textTheme.headline5!.copyWith(
                          color: AppColor.darkBackgroundColor.withOpacity(
                            0.5,
                          ),
                        ),
              ).setMarginOnly(
                bottom: 24.h,
              ),
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
                  await controller.onSubmit(context);
                },
                backgroundColor: AppColor.primaryColor,
                textColor: AppColor.backgroundColor,
                fontWeight: FontWeight.w700,
              ).setMarginOnly(
                bottom: Responsive.isDesktop(context) ? 32.h : 12.h,
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
