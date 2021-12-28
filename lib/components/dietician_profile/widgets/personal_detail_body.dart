import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:project_beta/components/dietician_profile/widgets/add_certificate.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/student_forum/post_getx_controller.dart';
import 'package:project_beta/src/common/app_text_form_field.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class PersonalDetailsBody extends StatelessWidget {
  const PersonalDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostGetXController>(
      init: PostGetXController(),
      builder: (controller) {
        return Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  AppDropDownList(
                    height: 20,
                    title: LanguageConstants.highestQualification,
                    items:
                        controller.categoryList.map<DropdownMenuItem<String>>(
                      (String value) {
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
                      },
                    ).toList(),
                    value: controller.selectedValue,
                    onChanged: (String value) {},
                  ),
                  SizedBox(height: 8.h),
                  AppDropDownList(
                    height: 20,
                    title: LanguageConstants.currentDesignation,
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
                    title: LanguageConstants.yearsOfExperience,
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
                  AddCertificate(
                      title: LanguageConstants.certifications,
                      hint: LanguageConstants.addCertification,
                      onTap: () {
                        Beamer.of(context).beamToNamed(
                          AppRoutes.dietitianCertificate,
                        );
                      },
                      icon: Icons.add_circle),
                  SizedBox(height: 8.h),
                  AppTextFormField(
                    hintText: 'https://linkedin.com/in/abcde-efghi',
                    title: LanguageConstants.linkedInProfileLink,
                    borderColor: AppColor.black.withOpacity(0.4),
                    borderWidth: 1.0,
                  ),
                  SizedBox(height: 8.h),
                  AppDropDownList(
                    height: 20,
                    title: LanguageConstants.trailSessionOffered,
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
                  AppTextFormField(
                    hintText: '10',
                    title: LanguageConstants.duration,
                    borderColor: AppColor.black.withOpacity(0.4),
                    borderWidth: 1,
                  ),
                  SizedBox(height: 8.h),
                  AppDropDownList(
                    height: 20,
                    title: LanguageConstants.chargeBy,
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
                  AppTextFormField(
                    hintText: '500',
                    title: LanguageConstants.chargeRate,
                    borderColor: AppColor.black.withOpacity(0.4),
                    borderWidth: 1.0,
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
            AppButton(
              label: LanguageConstants.kContinue.toUpperCase(),
              onTap: () {},
              backgroundColor: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(2.0),
              height: 22.h,
              fontSize: 18.sp,
              textColor: AppColor.backgroundColor,
            ),
          ],
        ).setMarginSymmetric(
          horizontal: Responsive.isMobile(context) ? 8.w : 36.w,
        );
      },
    );
  }
}
