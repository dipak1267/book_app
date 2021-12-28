import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/login_and_registration/login/widgets/phone_number_widget.dart';
import 'package:project_beta/constants/app_icons.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/create_account/create_account_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/common_widgets/app_list_tyle.dart';
import 'package:project_beta/src/common_widgets/app_text_button.dart';
import 'package:project_beta/src/common_widgets/app_text_form_field.dart';
import 'package:project_beta/src/common_widgets/password_widget.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/gender_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class CreateAccountWeb extends StatelessWidget {
  final CreateAccountGetXController getXController =
      Get.put(CreateAccountGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateAccountGetXController>(
      builder: (controller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              AppListTile(
                title: LanguageConstants.createAccount,
                titleTextStyle: Theme.of(context).textTheme.headline3!.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                subTitle: LanguageConstants.letsGetYouUpAllDetails,
                subTitleTextStyle:
                    Theme.of(context).textTheme.headline4!.copyWith(
                          color: AppColor.darkBorderColor.withOpacity(0.3),
                        ),
              ).setMarginOnly(
                bottom: 24.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: AppTextFormField(
                      hintText: LanguageConstants.firstName,
                      title: LanguageConstants.firstName,
                      prefixIcon: Icon(
                        AppIcons.person,
                        size: 22.w,
                        color: AppColor.primaryColor,
                      ),
                      titleSpacing: 2,
                      controller: controller.firstNameController,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: AppTextFormField(
                      hintText: LanguageConstants.lastName,
                      title: LanguageConstants.lastName,
                      titleSpacing: 2,
                      prefixIcon: Icon(
                        AppIcons.person,
                        size: 22.w,
                        color: AppColor.primaryColor,
                      ),
                      controller: controller.lastNameController,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              PhoneNumberWidget(
                onChanged: (value) {},
                initialSelection: '+91',
                controller: controller.mobileNumberController,
              ),
              SizedBox(height: 6.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Expanded(
                    child: AppTextFormField(
                      hintText: LanguageConstants.emailAddress,
                      title: LanguageConstants.emailAddress,
                      titleSpacing: 2,
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        size: 24.w,
                        color: AppColor.primaryColor,
                      ),
                      onChanged: (value) {},
                      controller: controller.emailController,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: AppDropDownList(
                      title: LanguageConstants.gender,
                      borderColor: AppColor.darkBorderColor.withOpacity(0.2),
                      items: controller.gender
                          .map(
                            (GenderModel g) => DropdownMenuItem<String>(
                              child: Row(
                                children: [
                                  Icon(
                                    g.icon,
                                    size: 16.w,
                                    color: AppColor.primaryColor,
                                  ).setMarginOnly(
                                    right: 16.w,
                                  ),
                                  Text(
                                    g.gender!,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                          color: AppColor.tagTextColor,
                                        ),
                                  ),
                                ],
                              ),
                              value: g.gender,
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        controller.setDropDownValue(value);
                      },
                      height: 20,
                      value: controller.selectedGender,
                    ),
                  )
                ],
              ),
              SizedBox(height: 6.h),
              PasswordRowWidget(
                iconSize: 18.w,
                passwordTitleOne: 'Password',
                passwordTitleTwo: 'Confirm Password',
                passwordTwoHint: '',
                passwordOneHint: 'Password',
                widgetSpacing: 12,
                passwordFieldOneController: controller.passwordOneController,
                passwordFieldTwoController: controller.passwordTwoController,
                onChangedPassOne: (value) {},
                onChangedPassTwo: (value) {},
              ),
              SizedBox(height: 6.h),
              AppButton(
                onTap: () {},
                backgroundColor: AppColor.primaryColor,
                height: 24.h,
                fontWeight: FontWeight.w700,
                label: LanguageConstants.getOtp.toUpperCase(),
                textColor: AppColor.backgroundColor,
              ),
              SizedBox(height: 6.h),
              AppTextButton1(
                text1: '${LanguageConstants.ifYouHaveAccount}\t',
                text2: LanguageConstants.signIn,
                onTap: () {},
              ).setMarginOnly(
                bottom: 8.h,
              ),
            ],
          ).setMarginSymmetric(
            horizontal: 32.w,
            vertical: 12.h,
          ),
        );
      },
    );
  }
}
