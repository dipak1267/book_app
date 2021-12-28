import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/border_text_container.dart';
import 'package:project_beta/src/common_widgets/circular_icon_container.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class DietitianProfileBody extends StatelessWidget {
  const DietitianProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularIconContainer(
            avatar: AppAssets.bmi,
            padding: 24,
            iconBackgroundColor: AppColor.primaryColor.withOpacity(
              0.1,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            LanguageConstants.checkYourBmi,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: 6.h),
          Expanded(
            child: ListView(
              children: [
                Text(
                  LanguageConstants.recommendedDietPlan,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                      child: BorderContainer(
                        content: LanguageConstants.generalContent,
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: BorderContainer(
                        content: LanguageConstants.generalContent,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                  LanguageConstants.recommendedVideos,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
// SizedBox(height: 2.h),
// VideoContainer(),
                SizedBox(height: 4.h),
                Text(
                  "Do's",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: AppColor.primaryColor,
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                      child: BorderContainer(
                        content: LanguageConstants.generalContent,
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: BorderContainer(
                        content: LanguageConstants.generalContent,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                  "Dont's",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: AppColor.primaryColor,
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                      child: BorderContainer(
                        content: LanguageConstants.generalContent,
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: BorderContainer(
                        content: LanguageConstants.generalContent,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          AppButton(
            onTap: () =>
                Beamer.of(context).beamToNamed(AppRoutes.dietitianList),
            label: LanguageConstants.bookDietitian,
            height: 22.h,
            fontSize: 20.sp,
            backgroundColor: AppColor.primaryColor,
            textColor: AppColor.white,
          ).setMarginOnly(
            bottom: 4.h,
          )
        ],
      ),
    );
  }
}
