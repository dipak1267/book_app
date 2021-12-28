import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/controller/create_account/password_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_list_tyle.dart';
import 'package:project_beta/src/common_widgets/password_widget.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class PasswordBody extends StatelessWidget {
  final PasswordGetXController passwordGetXController =
      Get.put(PasswordGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PasswordGetXController>(
      builder: (controller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: SvgPicture.asset(
                  AppAssets.password,
                ),
              ).setMarginOnly(bottom: 8.h, top: 8.h),
              AppListTile(
                title: 'New Password',
                titleTextStyle: Theme.of(context).textTheme.headline5!.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                subTitle: 'Please create a new password',
                subTitleTextStyle:
                    Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColor.darkBackgroundColor.withOpacity(0.5),
                        ),
              ).setMarginOnly(
                bottom: 4.h,
              ),
              PasswordWidget(
                iconSize: 24.w,
                passwordTitleOne: 'New Password',
                passwordTitleTwo: 'Confirm Password',
                passwordFieldOneController: controller.newPasswordController,
                passwordFieldTwoController:
                    controller.confirmPasswordController,
                onChangedPassOne: (value) {},
                widgetSpacing: 0,
                onChangedPassTwo: (value) {},
              ).setMarginOnly(
                bottom: 6.h,
              ),
              AppButton(
                onTap: () {},
                backgroundColor: AppColor.primaryColor,
                height: 22.h,
                label: 'RESET PASSWORD',
                textColor: AppColor.backgroundColor,
              ),
            ],
          ).setMarginSymmetric(
            horizontal: Responsive.isMobile(context)
                ? 24.w
                : Responsive.isTablet(context)
                    ? 80.w
                    : 32.w,
            vertical: 8.h,
          ),
        );
      },
    );
  }
}
