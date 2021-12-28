import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/learning_zone/widgets/category_item.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/learning_zone/free_resource_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';

class FreeResourceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FreeResourceGetXController>(
      init: FreeResourceGetXController(),
      builder: (controller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              categories(context: context, controller: controller),
              controller.getPages(controller.selectedCategory),
            ],
          ),
        );
      },
    );
  }

  Widget categories(
      {required context, required FreeResourceGetXController controller}) {
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
            activeCatIndex: controller.selectedCategory,
            onCatSelected: (index) {
              controller.selectedCategory = index;
            },
          ),
          SizedBox(
            width: 8.w,
          ),
          CategoryItem(
            label: LanguageConstants.video,
            icon: AppAssets.videoPlayer,
            currentCatIndex: 1,
            activeCatIndex: controller.selectedCategory,
            onCatSelected: (index) {
              controller.selectedCategory = index;
            },
          ),
          SizedBox(
            width: 8.w,
          ),
          CategoryItem(
            label: LanguageConstants.pdf,
            icon: AppAssets.pdf,
            currentCatIndex: 2,
            activeCatIndex: controller.selectedCategory,
            onCatSelected: (index) {
              controller.selectedCategory = index;
            },
          ),
          SizedBox(
            width: 8.w,
          ),
          CategoryItem(
            label: LanguageConstants.text,
            icon: AppAssets.notes,
            currentCatIndex: 3,
            activeCatIndex: controller.selectedCategory,
            onCatSelected: (index) {
              controller.selectedCategory = index;
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
