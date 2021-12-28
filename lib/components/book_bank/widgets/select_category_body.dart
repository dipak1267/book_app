import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/more_screen/widgets/app_category_widget.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/controller/book_bank/select_category_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';

class SelectCategoryBody extends StatelessWidget {
  final SelectCategoryGetXController selectCategoryGetXController =
      Get.put(SelectCategoryGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectCategoryGetXController>(
      builder: (controller) {
        return ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 8.h,
          ),
          children: controller.selectCategory
              .map(
                (e) => AppCategoryWidget(
                  title: e.title,
                  asset: e.asset,
                  onTap: () =>
                      Beamer.of(context).beamToNamed(AppRoutes.bookBank),
                ).setMarginOnly(
                  bottom: 8.h,
                ),
              )
              .toList(),
        );
      },
    );
  }
}
