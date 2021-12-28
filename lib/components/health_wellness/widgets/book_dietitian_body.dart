import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common/app_text_form_field.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class BookDietitianBody extends StatelessWidget {
  const BookDietitianBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              AppTextFormField(
                hintText: 'Mohammed ashif',
                title: LanguageConstants.name,
                titleSpacing: 2,
              ),
              SizedBox(height: 6.h),
              AppTextFormField(
                hintText: 'Mohammedashif@gmail.com',
                title: LanguageConstants.email,
                titleSpacing: 2,
              ),
              SizedBox(height: 6.h),
              AppTextFormField(
                hintText: '123456789',
                title: LanguageConstants.mobileNo,
                titleSpacing: 2,
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.appointmentDate,
                height: 20,
                items: [],
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.appointmentTime,
                height: 20,
                items: [],
              ),
              SizedBox(height: 6.h),
              AppTextFormField(
                hintText: 'the honest thought',
                title: LanguageConstants.appointmentDetails,
                titleSpacing: 2,
              ),
            ],
          ),
        ),
        AppButton(
          onTap: () =>
              Beamer.of(context).beamToNamed(AppRoutes.dietitianProfile),
          label: LanguageConstants.submit,
          height: 22.h,
          textColor: AppColor.white,
          fontSize: 18.sp,
          backgroundColor: AppColor.primaryColor,
        )
      ],
    );
  }
}
