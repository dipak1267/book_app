import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/book_bank/book_details_tabs_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class BookDetailsTabView extends StatelessWidget {
  final BookDetailsTabsGetXController bookDetailsTabsGetXController =
      Get.put(BookDetailsTabsGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookDetailsTabsGetXController>(
      builder: (controller) {
        return CardTemplate(
          child: Column(
            children: [
              DefaultTabController(
                initialIndex: 0,
                length: 3,
                child: TabBar(
                  controller: controller.tabController,
                  labelColor: AppColor.primaryColor,
                  indicatorColor: AppColor.primaryColor,
                  indicatorPadding: EdgeInsets.zero,
                  automaticIndicatorColorAdjustment: true,
                  labelStyle: Theme.of(context).textTheme.subtitle2,
                  unselectedLabelStyle: Theme.of(context).textTheme.subtitle1,
                  unselectedLabelColor:
                      AppColor.darkBackgroundColor.withOpacity(0.5),
                  labelPadding: EdgeInsets.symmetric(
                    vertical: 4.h,
                    horizontal: 8.w,
                  ),
                  tabs: [
                    Text(
                      LanguageConstants.about,
                    ),
                    Text(
                      LanguageConstants.details,
                    ),
                    Text(
                      LanguageConstants.reviews,
                    ),
                  ],
                ).setMarginSymmetric(
                  horizontal: 12.w,
                ),
              ),
              Container(
                height: Responsive.isMobile(context)
                    ? 180.h
                    : Responsive.isTablet(context)
                        ? 200.h
                        : 132.h,
                child: TabBarView(
                  controller: controller.tabController,
                  children: controller.tabs,
                ).setMarginOnly(
                  bottom: 12.h,
                  top: 4.h,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
