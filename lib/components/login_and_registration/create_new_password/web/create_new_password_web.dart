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
import 'package:project_beta/theme/app_theme.dart';

class CreateNewPasswordWeb extends StatelessWidget {
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
              ).setMarginOnly(
                bottom: 12.h,
              ),
              AppListTile(
                title: 'New Password',
                titleTextStyle: Theme.of(context).textTheme.headline4!.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                subTitle: 'Please create a new password',
                subTitleTextStyle:
                    Theme.of(context).textTheme.headline5!.copyWith(
                          color: AppColor.darkBackgroundColor.withOpacity(0.5),
                        ),
              ).setMarginOnly(
                bottom: 12.h,
              ),
              PasswordWidget(
                iconSize: 16.w,
                passwordTitleOne: 'New Password',
                passwordTitleTwo: 'Confirm Password',
                passwordFieldOneController: controller.newPasswordController,
                passwordFieldTwoController:
                    controller.confirmPasswordController,
                onChangedPassOne: (value) {},
                widgetSpacing: 8.h,
                onChangedPassTwo: (value) {},
              ).setMarginOnly(
                bottom: 12.h,
              ),
              AppButton(
                onTap: () {},
                backgroundColor: AppColor.primaryColor,
                height: 28.h,
                fontSize: 22.sp,
                label: 'RESET PASSWORD',
                textColor: AppColor.backgroundColor,
              ),
            ],
          ).setMarginSymmetric(
            horizontal: 64.w,
            vertical: 16.h,
          ),
        );
      },
    );
  }
}
