import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class AboutTrainingWidget extends StatelessWidget {
  const AboutTrainingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 6.h,
        ),
        Text(
          LanguageConstants.aboutTraining,
          style:
              Theme.of(context).textTheme.headline6!.copyWith(fontSize: 15.0),
        ),
        SizedBox(
          height: 6.h,
        ),
        Text(
          LanguageConstants.loremIpsum,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontSize: 14.0, color: AppColor.greenSpring),
        ),
        SizedBox(
          height: 6.h,
        ),
        Row(
          children: [
            SvgPicture.asset(
              AppAssets.female,
              height: 16.h,
              width: 16.w,
            ),
            SizedBox(width: 8.w),
            Text(
              LanguageConstants.presenterName,
              style: Theme.of(context).textTheme.subtitle2!,
            ),
            Spacer(),
            Text(
              LanguageConstants.viewProfile,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: AppColor.fuelYellow,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
