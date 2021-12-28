import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/components/health_wellness/web/dietician_list_web.dart';
import 'package:project_beta/components/health_wellness/widgets/dietitian_list_body.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class DietitianListScreen extends StatelessWidget {
  const DietitianListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: AppBarTemplate(
        backGroundColor: AppColor.lightYellow,
        toolbarHeight: 18.h,
        elevation: 1,
        centerTitle: true,
        suffixWidget: GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            AppAssets.filter,
            color: AppColor.primaryColor,
          ).setMarginOnly(
            right: 24.w,
          ),
        ),
        title: LanguageConstants.dietitianList.toUpperCase(),
        body: DietitianListBody().setMarginSymmetric(
          horizontal: 24.w,
          vertical: 8.h,
        ),
      ),
      tablet: AppBarTemplate(
        backGroundColor: AppColor.lightYellow,
        toolbarHeight: 18.h,
        elevation: 1,
        centerTitle: true,
        title: LanguageConstants.dietitianList.toUpperCase(),
        suffixWidget: GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            AppAssets.filter,
            color: AppColor.primaryColor,
          ).setMarginOnly(
            right: 24.w,
          ),
        ),
        body: DietitianListBody().setMarginSymmetric(
          horizontal: 24.w,
          vertical: 8.h,
        ),
      ),
      desktop: DietitianListWeb(),
    );
  }
}
