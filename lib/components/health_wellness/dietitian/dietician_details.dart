import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/components/health_wellness/widgets/dietitian_details_body.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class DietitianDetailsScreen extends StatelessWidget {
  const DietitianDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Responsive(mobile: , tablet: , desktop: )
    return AppBarTemplate(
      backGroundColor: AppColor.lightYellow,
      toolbarHeight: 18.h,
      elevation: 1,
      centerTitle: true,
      title: LanguageConstants.dietitianDetails.toUpperCase(),
      suffixWidget: GestureDetector(
        onTap: () {},
        child: SvgPicture.asset(
          AppAssets.chat,
          color: AppColor.primaryColor,
        ).setMarginOnly(
          right: 24.w,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
        child: DietitianDetailsBody()
      ),
    );
  }
}
