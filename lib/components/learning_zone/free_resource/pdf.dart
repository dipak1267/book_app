import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/controller/learning_zone/free_resource_getx_controller.dart';
import 'package:project_beta/src/common_widgets/custom_divider.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class PDF extends StatelessWidget {
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
                        Icons.picture_as_pdf,
                        color: AppColor.greenSpring,
                        size: 16.w,
                      ).setMarginOnly(
                        right: 16.w,
                      ),
                      Text(
                        'PDF Title',
                        style: Theme.of(context).textTheme.subtitle2,
                      )
                    ],
                  ),
                ),
                AppDivider().setMarginSymmetric(
                  vertical: 6.h,
                ),
                ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today_rounded,
                        color: AppColor.fuelYellow,
                        size: 16.sp,
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        '22 March 2021',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: AppColor.greenSpring,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ).setMarginSymmetric(
              horizontal: 16.w,
              vertical: 8.h,
            ),
          ).setMarginSymmetric(
            vertical: 2.h,
            horizontal: 16.w,
          );
        },
      ).setMarginOnly(
        top: 4.h,
      ),
    );
  }
}
