import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/student_forum/forum_filter_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_close_button.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class ForumFilterScreen extends StatelessWidget {
  static const pageLink = "/ForumFilter";

  final ForumFilterGetXController forumFilterGetXController =
      Get.put(ForumFilterGetXController());

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: SliverAppBarTemplate(
        expandedHeight: 48.h,
        title: LanguageConstants.filter,
        trialWidgetEnabled: true,
        fontSize: 18.sp,
        trailingWidget: AppCloseButton(),
        body: ForumFilterBody(),
      ),
      tablet: SliverAppBarTemplate(
        expandedHeight: 48.h,
        title: LanguageConstants.filter,
        trialWidgetEnabled: true,
        fontSize: 18.sp,
        trailingWidget: AppCloseButton(),
        body: ForumFilterBody(),
      ),
      desktop: WebTemplate(
        pageTitle: LanguageConstants.filter,
        body: ForumFilterBody().setMarginSymmetric(
          horizontal: 48.w,
        ),
      ),
    );
  }
}

class ForumFilterBody extends StatelessWidget {
  const ForumFilterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForumFilterGetXController>(
      builder: (controller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              AppDropDownList(
                  title: LanguageConstants.subject,
                  value: controller.selectedListItem,
                  onChanged: (value) {
                    controller.getSelectedItem(value);
                  },
                  items: controller.list.map((String s) {
                    return DropdownMenuItem<String>(
                      value: s,
                      child: Text(
                        s,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColor.primaryTextColor,
                            ),
                      ),
                    );
                  }).toList()),
              SizedBox(height: 8.h),
              AppDropDownList(
                  title: LanguageConstants.classString,
                  value: controller.selectedListItem,
                  onChanged: (value) {
                    controller.getSelectedItem(value);
                  },
                  items: controller.list.map((String s) {
                    return DropdownMenuItem<String>(
                      value: s,
                      child: Text(
                        s,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColor.primaryTextColor,
                            ),
                      ),
                    );
                  }).toList()),
              SizedBox(height: 8.h),
              AppDropDownList(
                  title: LanguageConstants.bookType,
                  value: controller.selectedListItem,
                  onChanged: (value) {
                    controller.getSelectedItem(value);
                  },
                  items: controller.list.map((String s) {
                    return DropdownMenuItem<String>(
                      value: s,
                      child: Text(
                        s,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColor.primaryTextColor,
                            ),
                      ),
                    );
                  }).toList()),
              SizedBox(height: 8.h),
              AppDropDownList(
                  title: LanguageConstants.price,
                  value: controller.selectedListItem,
                  onChanged: (value) {
                    controller.getSelectedItem(value);
                  },
                  items: controller.list.map((String s) {
                    return DropdownMenuItem<String>(
                      value: s,
                      child: Text(
                        s,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColor.primaryTextColor,
                            ),
                      ),
                    );
                  }).toList()),
              SizedBox(height: 8.h),
              AppDropDownList(
                  title: LanguageConstants.bookCondition,
                  value: controller.selectedListItem,
                  onChanged: (value) {
                    controller.getSelectedItem(value);
                  },
                  items: controller.list.map((String s) {
                    return DropdownMenuItem<String>(
                      value: s,
                      child: Text(
                        s,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColor.primaryTextColor,
                            ),
                      ),
                    );
                  }).toList()),
              SizedBox(height: 8.h),
              AppDropDownList(
                  title: LanguageConstants.authorName,
                  value: controller.selectedListItem,
                  onChanged: (value) {
                    controller.getSelectedItem(value);
                  },
                  items: controller.list.map((String s) {
                    return DropdownMenuItem<String>(
                      value: s,
                      child: Text(
                        s,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColor.primaryTextColor,
                            ),
                      ),
                    );
                  }).toList()),
              SizedBox(height: 8.h),
              AppDropDownList(
                  title: LanguageConstants.book,
                  value: controller.selectedListItem,
                  onChanged: (value) {
                    controller.getSelectedItem(value);
                  },
                  items: controller.list.map((String s) {
                    return DropdownMenuItem<String>(
                      value: s,
                      child: Text(
                        s,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColor.primaryTextColor,
                            ),
                      ),
                    );
                  }).toList()),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Expanded(
                    child: AppButton(
                      onTap: () {
                        print("cancel clicked");
                      },
                      height: 22.h,
                      fontSize: 16.sp,
                      label: LanguageConstants.cancel,
                      backgroundColor: AppColor.primaryColor,
                      textColor: AppColor.white,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: AppButton(
                      onTap: () {
                        print("cancel clicked");
                      },
                      height: 22.h,
                      fontSize: 16.sp,
                      label: LanguageConstants.search,
                      backgroundColor: AppColor.primaryColor,
                      textColor: AppColor.white,
                    ),
                  ),
                ],
              )
            ],
          ).marginSymmetric(
            horizontal: 16.w,
            vertical: 8.h,
          ),
        );
      },
    );
  }
}
