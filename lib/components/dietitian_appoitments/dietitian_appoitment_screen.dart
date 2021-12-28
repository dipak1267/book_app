import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'widgets/dietitian_appointment_body.dart';

class DietitianAppoitmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: AppBarTemplate(
        backGroundColor: AppColor.lightYellow,
        toolbarHeight: 18.h,
        elevation: 1,
        centerTitle: true,
        drawer: Drawer(),
        isDrawer: true,
        suffixWidget: GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            AppAssets.filter,
            color: AppColor.primaryColor,
          ).setMarginOnly(
            right: 24.w,
          ),
        ),
        title: LanguageConstants.dietitianAppointment.toUpperCase(),
        body: DietitianAppointmentBody().setMarginSymmetric(
          horizontal: 24.w,
          vertical: 8.h,
        ),
      ),
      tablet: AppBarTemplate(
        backGroundColor: AppColor.lightYellow,
        toolbarHeight: 18.h,
        elevation: 1,
        centerTitle: true,
        drawer: Drawer(),
        isDrawer: true,
        title: LanguageConstants.dietitianAppointment.toUpperCase(),
        suffixWidget: GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            AppAssets.filter,
            color: AppColor.primaryColor,
          ).setMarginOnly(
            right: 24.w,
          ),
        ),
        body: DietitianAppointmentBody().setMarginSymmetric(
          horizontal: 24.w,
          vertical: 8.h,
        ),
      ),
      desktop: WebTemplate(
        body: DietitianAppointmentBody().setMarginSymmetric(
          horizontal: 24.w,
          vertical: 8.h,
        ),
        pageTitle: LanguageConstants.dietitianList,
      ),
    );
  }
}
