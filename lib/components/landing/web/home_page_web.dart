import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/landing/widgets/home_video_widget.dart';
import 'package:project_beta/components/landing/widgets/profile_completion_widget.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/home/home_category_getx_controller.dart';
import 'package:project_beta/src/common_widgets/details_box_widget.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';

class HomePageWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeCategoryGetXController>(
      init: HomeCategoryGetXController(),
      builder: (controller) {
        return SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileCompletionWidget().setMarginOnly(
                bottom: 8.h,
              ),
              GridView.builder(
                itemCount: controller.homeCategory.length,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
                itemBuilder: (_, index) {
                  return HomeCategoryCard(
                    avatarUrl: controller.homeCategory[index].asset!,
                    title: controller.homeCategory[index].title!,
                    onTap: () {
                      Beamer.of(context).beamToNamed(
                          controller.homeCategory[index].screenName!);
                    },
                  ).setMarginOnly(
                    top: 2.h,
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 16.w,
                ),
              ).setMarginOnly(
                bottom: 8.h,
              ),
              Text(
                LanguageConstants.recommendedVideos,
                style: Theme.of(context).textTheme.subtitle2,
              ).setMarginOnly(
                bottom: 8.h,
              ),
              HomeVideoWidget(
                videoTitle: 'Sample Video',
              ).setMarginOnly(
                bottom: 8.h,
              ),
            ],
          ).setMarginSymmetric(
            horizontal: 24.w,
            vertical: 12.h,
          ),
        );
      },
    );
  }
}
