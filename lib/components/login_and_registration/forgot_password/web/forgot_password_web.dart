import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/src/common/app_text_form_field.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_list_tyle.dart';
import 'package:project_beta/src/common_widgets/app_text_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class ForgotPasswordWeb extends StatelessWidget {
  const ForgotPasswordWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          child: SvgPicture.asset(
            AppAssets.forgotPassword,
          ),
        ).setMarginOnly(
          bottom: 4.h,
          top: 8.h,
        ),
        AppListTile(
          title: 'Forgot Password',
          titleTextStyle: Theme.of(context).textTheme.headline4!.copyWith(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w700,
              ),
          subTitle: 'Please enter your email',
          subTitleTextStyle: Theme.of(context).textTheme.headline5!.copyWith(
                color: AppColor.darkBackgroundColor.withOpacity(0.5),
              ),
        ).setMarginOnly(
          bottom: 24.h,
        ),
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
          bottom: 12.h,
        ),
        AppButton(
          height: 28.h,
          label: 'RESET PASSWORD',
          onTap: () {},
          backgroundColor: AppColor.primaryColor,
          textColor: AppColor.backgroundColor,
          fontWeight: FontWeight.w700,
          fontSize: 20.sp,
        ).setMarginOnly(
          bottom: 12.h,
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
      horizontal: 48.w,
    );
  }
}
