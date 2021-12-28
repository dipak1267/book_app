import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/login/login_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/theme/app_theme.dart';
import 'package:project_beta/src/screen_utils.dart';

class LoginWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginGetXController>(
      init: LoginGetXController(),
      builder: (controller) {
        return Column(
          children: [
            ListTile(
              title: Text(
                LanguageConstants.welcomeBack,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              subtitle: Text(
                LanguageConstants.loginToContinue,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: AppColor.darkBackgroundColor.withOpacity(0.5),
                    ),
              ).setMarginSymmetric(
                vertical: 4.h,
              ),
            ).setMarginOnly(
              top: 24.h,
              bottom: 12.h,
            ),
            DefaultTabController(
              length: controller.length,
              initialIndex: controller.index,
              child: TabBar(
                controller: controller.tabController,
                labelColor: AppColor.primaryColor,
                indicatorColor: AppColor.primaryColor,
                indicatorPadding: EdgeInsets.zero,
                automaticIndicatorColorAdjustment: true,
                labelStyle: Theme.of(context).textTheme.headline6!.copyWith(
                      color: AppColor.primaryColor,
                    ),
                unselectedLabelStyle: Theme.of(context).textTheme.headline6,
                unselectedLabelColor:
                    AppColor.darkBackgroundColor.withOpacity(0.5),
                labelPadding: EdgeInsets.symmetric(
                  vertical: 4.h,
                  horizontal: 8.w,
                ),
                tabs: [
                  Text(
                    LanguageConstants.email,
                  ),
                  Text(
                    LanguageConstants.mobileNo,
                  ),
                ],
              ).setMarginSymmetric(
                horizontal: 12.w,
              ),
            ).setMarginSymmetric(
              horizontal: 24.w,
              vertical: 2.h,
            ),
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: controller.screens,
              ).setMarginSymmetric(
                horizontal: 24.w,
                vertical: 2.h,
              ),
            ),
          ],
        );
      },
    );
  }
}
