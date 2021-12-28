import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/learning_zone/training_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class TrainingScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TrainingGetXController>(
      init: TrainingGetXController(),
      builder: (controller) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            tabBar(context: context, controller: controller),
            Flexible(
              fit: FlexFit.loose,
              child: TabBarView(
                controller: controller.tabController,
                children: controller.screens,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget tabBar({required context, required controller}) {
    return Container(
      color: AppColor.white,
      child: DefaultTabController(
        length: controller.length,
        initialIndex: controller.index,
        child: TabBar(
          controller: controller.tabController,
          labelColor: AppColor.primaryColor,
          indicatorColor: AppColor.fuelYellow,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 1.0,
          labelStyle: Theme.of(context).textTheme.subtitle2!,
          unselectedLabelStyle: Theme.of(context).textTheme.subtitle2!,
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
        ).setMarginSymmetric(
          horizontal: 12.w,
        ),
      ),
    );
  }
}
