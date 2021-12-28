import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:project_beta/components/add_certification/widgets/add_image.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/student_forum/post_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/common_widgets/share_bottom_sheet.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class AddCertificationBody extends StatelessWidget {
  const AddCertificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostGetXController>(
      init: PostGetXController(),
      builder: (controller) {
        return Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  AppDropDownList(
                    height: 20,
                    title: LanguageConstants.name,
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
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: AppColor.black,
                                  ),
                        ),
                      );
                    }).toList(),
                    value: controller.selectedValue,
                    onChanged: (String value) {},
                  ),
                  SizedBox(height: 8.h),
                  AppDropDownList(
                    height: 20,
                    title: LanguageConstants.organization,
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
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: AppColor.black,
                                  ),
                        ),
                      );
                    }).toList(),
                    value: controller.selectedValue,
                    onChanged: (String value) {},
                  ),
                  SizedBox(height: 8.h),
                  AppDropDownList(
                    height: 20,
                    title: LanguageConstants.expiration,
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
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: AppColor.black,
                                  ),
                        ),
                      );
                    }).toList(),
                    value: controller.selectedValue,
                    onChanged: (String value) {},
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    LanguageConstants.addImage,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(height: 4.h),
                  AddImage(),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
            AppButton(
              label: LanguageConstants.save.toUpperCase(),
              onTap: () => ShareBottomSheet.get(context),
              backgroundColor: AppColor.primaryColor,
              textColor: AppColor.backgroundColor,
              height: 22.h,
              fontSize: 18.sp,
            ),
          ],
        ).setMarginSymmetric(
          horizontal: Responsive.isMobile(context)
              ? 8.w
              : Responsive.isTablet(context)
                  ? 36.w
                  : 64.w,
        );
      },
    );
  }
}
