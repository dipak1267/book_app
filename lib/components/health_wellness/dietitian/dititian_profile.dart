import 'package:flutter/material.dart';
import 'package:project_beta/components/health_wellness/widgets/dietitian_profile_body.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class DietitianProfile extends StatelessWidget {
  const DietitianProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: AppBarTemplate(
        title: LanguageConstants.wellnessCenter,
        toolbarHeight: 16.h,
        centerTitle: true,
        elevation: 1,
        backGroundColor: AppColor.white,
        body: DietitianProfileBody().setMarginSymmetric(
          horizontal: 24.w,
        ),
      ),
      tablet: AppBarTemplate(
        title: LanguageConstants.wellnessCenter,
        toolbarHeight: 16.h,
        centerTitle: true,
        elevation: 1,
        backGroundColor: AppColor.white,
        body: DietitianProfileBody().setMarginSymmetric(
          horizontal: 32.w,
        ),
      ),
      desktop: WebTemplate(
        pageTitle: LanguageConstants.wellnessCenter,
        body: DietitianProfileBody().setMarginSymmetric(
          horizontal: 48.w,
        ),
      ),
    );
  }
}

class VideoContainer extends StatelessWidget {
  const VideoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.all(Radius.circular(8.w)),
          boxShadow: [
            BoxShadow(
              color: AppColor.greenSpring,
              offset: Offset(0.5, 1.9), //(x,y)
              blurRadius: 4.5,
            ),
          ],
        ),
        width: 162.w,
        height: 42.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColor.greenSpring,
              width: 162.w,
              height: 28.h,
            ),
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Text(
                'Recommended Videos',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 10.sp,
                  color: AppColor.black,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Text(
                'Recommended Videos is here there',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 8.sp,
                  color: AppColor.greenSpring,
                ),
              ),
            )
          ],
        ));
  }
}
