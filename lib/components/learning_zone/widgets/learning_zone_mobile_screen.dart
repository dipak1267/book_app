import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:project_beta/components/learning_zone/free_resource/free_resource_mobile.dart';
import 'package:project_beta/components/learning_zone/training/training_screen_mobile.dart';
import 'package:project_beta/components/learning_zone/widgets/learning_zone_tabbar.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/learning_zone/learning_zone_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class LearningZoneMobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBarTemplateTwo(
      backGroundColor: AppColor.pampas,
      toolbarHeight: 80.h,
      elevation: 0.0,
      customWidgetRequired: true,
      centerTitle: true,
      title: LanguageConstants.learningZone.toUpperCase(),
      prefixWidget: InkWell(
        onTap: () => Beamer.of(context).beamBack(),
        child: Icon(
          Icons.keyboard_backspace,
          color: AppColor.primaryColor,
          size: 32.w,
        ),
      ),
      suffixWidget: GestureDetector(
        onTap: () => Beamer.of(context).beamToNamed(AppRoutes.bookBankFilter),
        child: SvgPicture.asset(
          AppAssets.filter,
          color: AppColor.primaryColor,
        ).setMarginOnly(
          right: 12.w,
        ),
      ),
      customWidget: LearningZoneTabBar(),
      body: GetBuilder<LearningZoneGetXController>(
        init: LearningZoneGetXController(),
        builder: (controller) {
          return controller.currentTab ==
                  LearningZoneCurrentTab.UpcomingTraining
              ? TrainingScreenMobile()
              : FreeResourceMobile();
        },
      ),
    );
  }
}
