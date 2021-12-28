import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/learning_zone/widgets/status_widget.dart';
import 'package:project_beta/controller/learning_zone/free_resource_getx_controller.dart';
import 'package:project_beta/src/common_widgets/custom_divider.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class Audio extends StatelessWidget {
  final FreeResourceGetXController controller =
      Get.put(FreeResourceGetXController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColor.lightYellow),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.courseList.length,
        itemBuilder: (context, index) {
          return CardTemplate(
            child: Column(
              children: [
                InkWell(
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_circle_outline,
                        color: AppColor.greenSpring,
                        size: 24.w,
                      ).setMarginOnly(
                        right: 16.w,
                      ),
                      Text(
                        'Audio Title',
                        style: Theme.of(context).textTheme.subtitle2,
                      )
                    ],
                  ),
                ),
                AppDivider().setMarginSymmetric(
                  vertical: 6.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.volume_up,
                      color: AppColor.greenSpring,
                      size: 24.w,
                    ).setMarginOnly(
                      right: 16.w,
                    ),
                    Expanded(child: DateWidget()),
                  ],
                )
              ],
            ).setMarginSymmetric(
              horizontal: 16.w,
              vertical: 8.h,
            ),
          ).setMarginOnly(
            bottom: 4.h,
          );
        },
      ).setMarginOnly(
        top: 4.h,
      ),
    );
  }
}
