import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/student_forum/forum_filter_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class FilterBottomSheet {
  static get(context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return GetBuilder<ForumFilterGetXController>(
          init: ForumFilterGetXController(),
          builder: (controller) {
            return Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            LanguageConstants.filter,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          InkWell(
                            onTap: () => Beamer.of(context).beamBack(),
                            child: Icon(
                              Icons.close,
                              color: AppColor.primaryColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      AppDropDownList(
                        height: 20,
                        title: 'First Filter',
                        items: controller.categoryList
                            .map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              onTap: () {
                                controller.selectedValue = value;
                              },
                              value: value,
                              child: Text(
                                value,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color: AppColor.black,
                                    ),
                              ),
                            );
                          },
                        ).toList(),
                        value: controller.selectedValue,
                        onChanged: (String value) {},
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      AppDropDownList(
                        height: 20,
                        title: 'Second Filter',
                        items: controller.categoryList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            onTap: () {
                              controller.selectedValue = value;
                            },
                            value: value,
                            child: Text(
                              value,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    color: AppColor.black,
                                  ),
                            ),
                          );
                        }).toList(),
                        value: controller.selectedValue,
                        onChanged: (String value) {},
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      AppDropDownList(
                        height: 20,
                        title: 'Third Filter',
                        items: controller.categoryList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            onTap: () {
                              controller.selectedValue = value;
                            },
                            value: value,
                            child: Text(
                              value,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    color: AppColor.black,
                                  ),
                            ),
                          );
                        }).toList(),
                        value: controller.selectedValue,
                        onChanged: (String value) {},
                      ),
                    ],
                  ),
                ),
                AppButton(
                  onTap: () {
                    print(" Apply now button clicked");
                  },
                  height: 22.h,
                  fontSize: 16.sp,
                  backgroundColor: AppColor.primaryColor,
                  label: LanguageConstants.apply,
                  textColor: AppColor.white,
                ).setMarginSymmetric(
                  vertical: 8.h,
                ),
              ],
            ).setMarginSymmetric(
              horizontal: 16.w,
              vertical: 8.h,
            );
          },
        );
      },
    );
  }
}
