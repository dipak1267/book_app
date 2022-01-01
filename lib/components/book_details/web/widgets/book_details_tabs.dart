import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/book_bank/book_details_tabs_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/book_list_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class BookDetailsTabs extends StatelessWidget {
  final BookList? book;

  const BookDetailsTabs({Key? key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookDetailsTabsGetXController>(
      init: BookDetailsTabsGetXController(),
      builder: (controller) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColor.darkBorderColor.withOpacity(
                      0.2,
                    ),
                    width: 1.0,
                  ),
                ),
              ),
              child: DefaultTabController(
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
                ).setMarginOnly(
                  right: 48.w,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: TabBarView(
                controller: controller.tabController,
                children: controller.getPage(book!),
              ).setMarginOnly(
                bottom: 12.h,
                top: 4.h,
              ),
            ),
          ],
        );
      },
    );
  }
}
