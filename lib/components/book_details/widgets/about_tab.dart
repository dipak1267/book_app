import 'package:flutter/material.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_text_button.dart';
import 'package:project_beta/src/common_widgets/circular_icon_container.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircularIconContainer(
              padding: 8,
              avatar: AppAssets.student,
              iconBackgroundColor: AppColor.primaryColor.withOpacity(0.1),
              height: 18.h,
            ).setMarginOnly(
              right: 2.w,
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  'Alex',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                subtitle: Text(
                  '5 days ago',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
            AppTextButton2(
              onTap: () {},
              label: LanguageConstants.viewAll,
              fontSize: 14.sp,
              fontColor: AppColor.secondaryColor,
            ),
          ],
        ),
        Text(
          LanguageConstants.generalContent,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: AppColor.darkBackgroundColor.withOpacity(0.5),
              ),
        )
      ],
    ).setMarginSymmetric(
      horizontal: 12.w,
      vertical: 4.h,
    );
  }
}
