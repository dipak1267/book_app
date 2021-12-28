import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/app_icons.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/profile/personal_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_text_form_field.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'state_city_drop_down.dart';
import 'upload_image_widget.dart';

class PersonalWidget extends StatelessWidget {
  final PersonalGetXController personalGetXController =
      Get.put(PersonalGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonalGetXController>(
      init: PersonalGetXController(),
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                children: [
                  UploadImageWidget(
                    isCameraIconRequired: true,
                  ),
                  AppTextFormField(
                    hintText: '',
                    title: LanguageConstants.fathersName,
                    prefixIcon: Icon(
                      AppIcons.person,
                      color: AppColor.primaryColor,
                      size: 16.w,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  AppTextFormField(
                    hintText: '',
                    title: LanguageConstants.fathersEmail,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: AppColor.primaryColor,
                      size: 24.w,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  AppTextFormField(
                    hintText: '',
                    title: LanguageConstants.dateOfBirth,
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        AppIcons.calendar,
                        size: 18.w,
                        color: AppColor.primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  AppTextFormField(
                    hintText: '',
                    title: LanguageConstants.address,
                    prefixIcon: Icon(
                      Icons.location_on_outlined,
                      color: AppColor.primaryColor,
                      size: 24.w,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  StatCityDropDown(),
                ],
              ),
            ),
          ],
        ).setMarginSymmetric(
          horizontal: Responsive.isMobile(context)
              ? 0
              : Responsive.isTablet(context)
                  ? 24.w
                  : 48.w,
        );
      },
    );
  }
}
