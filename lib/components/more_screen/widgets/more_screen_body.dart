import 'package:flutter/cupertino.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/controller/home/more_screen_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';

import 'app_category_widget.dart';

class MoreScreenBody extends StatelessWidget {
  final MoreScreenGetXController moreScreenGetXController =
      Get.put(MoreScreenGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MoreScreenGetXController>(
      builder: (controller) {
        return ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 8.h,
          ),
          children: controller.moreCategory
              .map(
                (e) => AppCategoryWidget(
                  onTap: () {
                    Beamer.of(context).beamToNamed(e.screenName!);
                  },
                  elevation: 5,
                  title: e.title,
                  asset: e.asset,
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
