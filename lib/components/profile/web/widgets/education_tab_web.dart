import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/profile/educational_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class EducationalTabWeb extends StatelessWidget {
  final EducationalGetXController educationalGetXController =
      Get.put(EducationalGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EducationalGetXController>(
      builder: (controller) {
        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: AppDropDownList(
                      borderColor: AppColor.darkBorderColor.withOpacity(0.2),
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
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      color: AppColor.secondaryTextColor
                                          .withOpacity(0.5),
                                    ),
                          ),
                        );
                      }).toList()),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: AppDropDownList(
                      borderColor: AppColor.darkBorderColor.withOpacity(0.2),
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
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      color: AppColor.secondaryTextColor
                                          .withOpacity(0.5),
                                    ),
                          ),
                        );
                      }).toList()),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Expanded(
                  child: AppDropDownList(
                      borderColor: AppColor.darkBorderColor.withOpacity(0.2),
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
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      color: AppColor.secondaryTextColor
                                          .withOpacity(0.5),
                                    ),
                          ),
                        );
                      }).toList()),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: AppDropDownList(
                      borderColor: AppColor.darkBorderColor.withOpacity(0.2),
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
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      color: AppColor.secondaryTextColor
                                          .withOpacity(0.5),
                                    ),
                          ),
                        );
                      }).toList()),
                ),
              ],
            )
          ],
        ).setMarginSymmetric(
          horizontal: 48.w,
        );
      },
    );
  }
}
