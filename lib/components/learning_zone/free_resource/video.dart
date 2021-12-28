import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/learning_zone/widgets/course_card.dart';
import 'package:project_beta/controller/learning_zone/free_resource_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class Video extends StatelessWidget {
  final FreeResourceGetXController controller =
      Get.put(FreeResourceGetXController());

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) || Responsive.isTablet(context)
        ? Container(
            decoration: BoxDecoration(color: AppColor.lightYellow),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.courseList.length,
              itemBuilder: (context, index) {
                return CourseCard(
                  freeCourse: true,
                ).setMarginOnly(
                  bottom: 4.h,
                );
              },
            ).setMarginSymmetric(
              vertical: 4.h,
            ),
          )
        : GridView.builder(
            shrinkWrap: true,
            itemCount: controller.courseList.length,
            itemBuilder: (context, index) {
              return CourseCardWeb(
                freeCourse: true,
              ).setMarginSymmetric(
                horizontal: 8.w,
                vertical: 4.h,
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 120.h,
              crossAxisSpacing: 8.w,
              mainAxisSpacing: 4.w,
            ),
          ).setMarginSymmetric(
            horizontal: 16.w,
            vertical: 4.h,
          );
  }
}
