import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/learning_zone/learning_zone_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class LearningZoneTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LearningZoneGetXController>(
      init: LearningZoneGetXController(),
      builder: (controller) {
        return Row(
          children: [
            Expanded(
              child: AppButton(
                onTap: () => controller.currentTab =
                    LearningZoneCurrentTab.UpcomingTraining,
                height: 22.h,
                side: BorderSide(
                  style: BorderStyle.solid,
                  color: AppColor.darkBorderColor.withOpacity(0.1),
                ),
                textColor: controller.currentTab ==
                        LearningZoneCurrentTab.UpcomingTraining
                    ? AppColor.backgroundColor
                    : AppColor.primaryColor,
                backgroundColor: controller.currentTab ==
                        LearningZoneCurrentTab.UpcomingTraining
                    ? AppColor.primaryColor
                    : AppColor.backgroundColor,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                label: LanguageConstants.training,
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: AppButton(
                onTap: () => controller.currentTab =
                    LearningZoneCurrentTab.FreeResources,
                height: 22.h,
                side: BorderSide(
                  style: BorderStyle.solid,
                  color: AppColor.darkBorderColor.withOpacity(0.1),
                ),
                backgroundColor: controller.currentTab ==
                        LearningZoneCurrentTab.FreeResources
                    ? AppColor.primaryColor
                    : AppColor.backgroundColor,
                textColor: controller.currentTab ==
                        LearningZoneCurrentTab.FreeResources
                    ? AppColor.backgroundColor
                    : AppColor.primaryColor,
                borderRadius: BorderRadius.circular(4.w),
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                label: LanguageConstants.freeResources,
              ),
            ),
          ],
        ).setMarginSymmetric(
          horizontal: 24.w,
          vertical: 8.h,
        );
      },
    );
  }
}
