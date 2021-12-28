
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/src/common_widgets/app_list_tyle.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class ForGotPasswordBody extends StatelessWidget {
  const ForGotPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
          child: SvgPicture.asset(
            AppAssets.forgotPassword,
          ),
        ).setMarginOnly(
          bottom: 8.h,
          top: 32.h,
        ),
        AppListTile(
          title: 'Forgot Password',
          titleTextStyle: Theme.of(context).textTheme.headline5!.copyWith(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w700,
              ),
          subTitle: 'Please enter your email',
          subTitleTextStyle: Theme.of(context).textTheme.headline6!.copyWith(
                color: AppColor.darkBackgroundColor.withOpacity(0.5),
              ),
        ).setMarginOnly(
          bottom: 6.h,
        ),
      ],
    ).setMarginSymmetric(
      horizontal: Responsive.isMobile(context)
          ? 24.w
          : Responsive.isTablet(context)
              ? 80.w
              : 48.w,
    );
  }
}
