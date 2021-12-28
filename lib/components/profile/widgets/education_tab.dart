import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/profile/educational_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class EducationalWidget extends StatelessWidget {
  final EducationalGetXController educationalGetXController =
      Get.put(EducationalGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EducationalGetXController>(
      builder: (controller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              AppDropDownList(
                  title: LanguageConstants.class$,
                  value: controller.selectedListItem,
                  height: 20,
                  onChanged: (value) {
                    controller.getSelectedItem(value);
                  },
                  items: controller.list.map((String s) {
                    return DropdownMenuItem<String>(
                      value: s,
                      child: Text(
                        s,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color:
                                  AppColor.secondaryTextColor.withOpacity(0.5),
                            ),
                      ),
                    );
                  }).toList()),
              SizedBox(height: 16.h),
              AppDropDownList(
                  title: LanguageConstants.board,
                  value: controller.selectedListItem,
                  height: 20,
                  onChanged: (value) {
                    controller.getSelectedItem(value);
                  },
                  items: controller.list.map((String s) {
                    return DropdownMenuItem<String>(
                      value: s,
                      child: Text(
                        s,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color:
                                  AppColor.secondaryTextColor.withOpacity(0.5),
                            ),
                      ),
                    );
                  }).toList()),
              SizedBox(height: 8.h),
              AppDropDownList(
                  title: LanguageConstants.courseName,
                  value: controller.selectedListItem,
                  height: 20,
                  onChanged: (value) {
                    controller.getSelectedItem(value);
                  },
                  items: controller.list.map((String s) {
                    return DropdownMenuItem<String>(
                      value: s,
                      child: Text(
                        s,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color:
                                  AppColor.secondaryTextColor.withOpacity(0.5),
                            ),
                      ),
                    );
                  }).toList()),
              SizedBox(height: 8.h),
              AppDropDownList(
                  title: LanguageConstants.collegeName,
                  value: controller.selectedListItem,
                  height: 20,
                  onChanged: (value) {
                    controller.getSelectedItem(value);
                  },
                  items: controller.list.map((String s) {
                    return DropdownMenuItem<String>(
                      value: s,
                      child: Text(
                        s,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color:
                                  AppColor.secondaryTextColor.withOpacity(0.5),
                            ),
                      ),
                    );
                  }).toList())
            ],
          ).setMarginSymmetric(
            horizontal: Responsive.isMobile(context) ? 0 : 40.w,
            vertical: Responsive.isMobile(context) ? 4 : 24.h,
          ),
        );
      },
    );
  }
}
