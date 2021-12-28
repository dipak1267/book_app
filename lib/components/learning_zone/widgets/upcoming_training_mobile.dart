import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project_beta/components/learning_zone/widgets/category_item.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/learning_zone/training_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'course_card.dart';

class UpComingTrainingMobile extends StatelessWidget {
  const UpComingTrainingMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TrainingGetXController>(
      init: TrainingGetXController(),
      builder: (controller) {
        return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: AppColor.lightYellow),
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.courseList.length,
              itemBuilder: (context, index) {
                return CourseCard().setMarginOnly(
                  bottom: 4.h,
                );
              },
            ).setMarginSymmetric(
              vertical: 4.h,
            ),
          ),
        );
      },
    );
  }

  Widget categories({required context, required controller}) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 44.h,
      alignment: Alignment.center,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          /// TODO change sound icon
          CategoryItem(
            label: LanguageConstants.audio,
            icon: AppAssets.sound,
            currentCatIndex: 0,
            activeCatIndex: controller.upcomingTrainingSelectedCategory,
            onCatSelected: (index) {
              controller.upcomingTrainingSelectedCategory = index;
            },
          ),
          SizedBox(
            width: 8.w,
          ),
          CategoryItem(
            label: LanguageConstants.video,
            icon: AppAssets.videoPlayer,
            currentCatIndex: 1,
            activeCatIndex: controller.upcomingTrainingSelectedCategory,
            onCatSelected: (index) {
              controller.upcomingTrainingSelectedCategory = index;
            },
          ),
          SizedBox(
            width: 8.w,
          ),
          CategoryItem(
            label: LanguageConstants.pdf,
            icon: AppAssets.pdf,
            currentCatIndex: 2,
            activeCatIndex: controller.upcomingTrainingSelectedCategory,
            onCatSelected: (index) {
              controller.upcomingTrainingSelectedCategory = index;
            },
          ),
          SizedBox(
            width: 8.w,
          ),
          CategoryItem(
            label: LanguageConstants.text,
            icon: AppAssets.notes,
            currentCatIndex: 3,
            activeCatIndex: controller.upcomingTrainingSelectedCategory,
            onCatSelected: (index) {
              controller.upcomingTrainingSelectedCategory = index;
            },
          ),
          SizedBox(
            width: 8.w,
          ),
          CategoryItem(
            label: LanguageConstants.other,
            icon: AppAssets.more,
            currentCatIndex: 4,
            activeCatIndex: controller.upcomingTrainingSelectedCategory,
            onCatSelected: (index) {
              controller.upcomingTrainingSelectedCategory = index;
            },
          ),
          SizedBox(
            width: 8.w,
          ),
        ],
      ).setMarginSymmetric(
        vertical: 2.h,
        horizontal: 24.w,
      ),
    );
  }
}
