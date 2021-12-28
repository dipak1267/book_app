
import 'package:flutter/material.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_text_button.dart';
import 'package:project_beta/src/common_widgets/app_text_form_field.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class ForgotPasswordFooter extends StatelessWidget {
  const ForgotPasswordFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          title: 'Email Id',
          titleSpacing: 6,
          hintText: 'Enter email',
          prefixIcon: Icon(
            Icons.email_outlined,
            size: 24.w,
            color: AppColor.primaryColor,
          ),
        ).setMarginOnly(
          bottom: 8.h,
        ),
        AppButton(
          height: 24.5.h,
          label: 'RESET PASSWORD',
          onTap: () {},
          fontSize: 18.sp,
          backgroundColor: AppColor.primaryColor,
          textColor: AppColor.backgroundColor,
          fontWeight: FontWeight.w700,
        ).setMarginOnly(
          bottom: 8.h,
        ),
        AppTextButton2(
          label: 'Back to Sing In',
          onTap: () {},
          fontWeight: FontWeight.w600,
        ).setMarginOnly(
          bottom: 12.h,
        )
      ],
    ).setMarginSymmetric(
      horizontal: Responsive.isMobile(context)
          ? 24.w
          : Responsive.isTablet(context)
              ? 80.w
              : 64.w,
      vertical: 12.h
    );
  }
}
