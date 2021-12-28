import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/profile/profile_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class ProfileBody extends StatelessWidget {
  final ProfileGetXController tabGetXController =
      Get.put(ProfileGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileGetXController>(
      init: ProfileGetXController(),
      builder: (controller) {
        return DefaultTabController(
          length: controller.screens.length,
          initialIndex: controller.index.value,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.white12, width: 1),
                  ),
                ),
                child: TabBar(
                  controller: controller.tabController,
                  labelColor: AppColor.primaryColor,
                  onTap: (index) {
                    controller.animateController(index);
                  },
                  indicatorColor: AppColor.primaryColor,
                  indicatorPadding: EdgeInsets.zero,
                  automaticIndicatorColorAdjustment: true,
                  labelStyle: Theme.of(context).textTheme.subtitle2,
                  unselectedLabelStyle: Theme.of(context).textTheme.headline6,
                  unselectedLabelColor:
                      AppColor.darkBackgroundColor.withOpacity(0.5),
                  labelPadding: EdgeInsets.symmetric(
                    vertical: 4.h,
                  ),
                  tabs: [
                    Text(
                      LanguageConstants.personal,
                    ),
                    Text(
                      LanguageConstants.educational,
                    ),
                    Text(
                      LanguageConstants.personality,
                    ),
                  ],
                ).setMarginOnly(
                  top: 4.h,
                ),
              ),
              Expanded(
                child: Center(
                  child: TabBarView(
                    dragStartBehavior: DragStartBehavior.start,
                    controller: controller.tabController,
                    children: controller.screens
                        .map((tabWidget) => tabWidget)
                        .toList(),
                  ).setMarginSymmetric(
                    horizontal: 8.w,
                    vertical: 2.h,
                  ),
                ),
              ),
              AppButton(
                label: LanguageConstants.kContinue,
                onTap: () {},
                height: 22.h,
                fontSize: 18.sp,
                backgroundColor: AppColor.primaryColor,
                textColor: AppColor.backgroundColor,
                side: BorderSide(
                  style: BorderStyle.solid,
                  color: AppColor.darkBorderColor,
                  width: .25.w,
                ),
              ).setMarginSymmetric(
                vertical: 12.h,
              )
            ],
          ),
        );
      },
    );
  }
}
