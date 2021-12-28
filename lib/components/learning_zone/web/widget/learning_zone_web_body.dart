import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/learning_zone/free_resource/free_resource_mobile.dart';
import 'package:project_beta/components/learning_zone/widgets/category_item.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/learning_zone/learning_zone_getx_controller.dart';
import 'package:project_beta/controller/learning_zone/training_getx_controller.dart';
import 'package:project_beta/src/common_widgets/custom_divider.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class LearningZoneWebBody extends StatelessWidget {
  final LearningZoneCurrentTab? currentTab;

  const LearningZoneWebBody({Key? key, this.currentTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return currentTab == LearningZoneCurrentTab.UpcomingTraining
        ? TrainingScreenWeb()
        : FreeResourceMobile();
  }
}

class TrainingScreenWeb extends StatelessWidget {
  const TrainingScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TrainingGetXController>(
      init: TrainingGetXController(),
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CardTemplate(
              backgroundColor: AppColor.white,
              child: Column(
                children: [
                  tabBar(context: context, controller: controller)
                      .setMarginOnly(
                    right: MediaQuery.of(context).size.width / 2,
                  ),
                  AppDivider(),
                  categories(context: context, controller: controller),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                controller: controller.tabController,
                children: controller.webScreens,
                physics: ScrollPhysics(),
              ),
            )
          ],
        ).setMarginSymmetric(
          horizontal: 24.w,
          vertical: 8.h,
        );
      },
    );
  }

  Widget tabBar(
      {required context, required TrainingGetXController controller}) {
    return DefaultTabController(
      length: controller.webLength,
      initialIndex: controller.webIndex,
      child: TabBar(
        controller: controller.tabController,
        labelColor: AppColor.primaryColor,
        indicatorColor: AppColor.fuelYellow,
        indicatorPadding: EdgeInsets.zero,
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: Theme.of(context).textTheme.subtitle1!,
        unselectedLabelStyle: Theme.of(context).textTheme.subtitle1!,
        unselectedLabelColor: AppColor.darkBorderColor.withOpacity(0.2),
        labelPadding: EdgeInsets.symmetric(
          vertical: 6.h,
        ),
        tabs: [
          Text(
            LanguageConstants.upcomingTraining,
          ),
          Text(
            LanguageConstants.pastTraining,
          ),
        ],
      ),
    );
  }

  Widget categories({required context, required controller}) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 44.h,
      alignment: Alignment.centerLeft,
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
