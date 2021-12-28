import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/profile/widgets/state_city_drop_down.dart';
import 'package:project_beta/components/profile/widgets/upload_image_widget.dart';
import 'package:project_beta/constants/app_icons.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/profile/personal_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_text_form_field.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class PersonalTabWeb extends StatelessWidget {
  final PersonalGetXController personalGetXController =
      Get.put(PersonalGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonalGetXController>(
      init: PersonalGetXController(),
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UploadImageWidget(
              isCameraIconRequired: true,
            ).setMarginOnly(
              bottom: 8.h,
            ),
            Row(
              children: [
                Expanded(
                  child: AppTextFormField(
                    hintText: '',
                    title: LanguageConstants.fathersName,
                    prefixIcon: Icon(
                      AppIcons.person,
                      color: AppColor.primaryColor,
                      size: 16.w,
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: AppTextFormField(
                    hintText: '',
                    title: LanguageConstants.emailId,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: AppColor.primaryColor,
                      size: 24.w,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Expanded(
                  child: AppTextFormField(
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
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: AppTextFormField(
                    hintText: '',
                    title: LanguageConstants.address,
                    prefixIcon: Icon(
                      Icons.location_on_outlined,
                      color: AppColor.primaryColor,
                      size: 24.w,
                    ),
                  ),
                ),
              ],
            ),
            StatCityDropDown(),
          ],
        ).setMarginSymmetric(
          horizontal: 48.w,
        );
      },
    );
  }
}
