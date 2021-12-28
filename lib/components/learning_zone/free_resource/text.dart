import 'package:flutter/material.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/custom_divider.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';
import 'package:readmore/readmore.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardTemplate(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            child: Text(
              'Text Title',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ).setMarginOnly(
            bottom: 4.h,
          ),
          ReadMoreText(
            LanguageConstants.generalContent,
            trimLines: 2,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: AppColor.greenSpring,
                ),
            colorClickableText: AppColor.primaryColor,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            moreStyle: Theme.of(context).textTheme.subtitle1!,
          ),
          AppDivider().setMarginSymmetric(
            vertical: 6.h,
          ),
          Row(
            children: [
              Icon(
                Icons.calendar_today_rounded,
                color: AppColor.fuelYellow,
                size: 16.sp,
              ),
              SizedBox(width: 2.w),
              Text(
                '22 March 2021',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColor.greenSpring,
                    ),
              ),
            ],
          ),
        ],
      ).setMarginSymmetric(
        horizontal: 16.w,
        vertical: 8.h,
      ),
    ).setMarginSymmetric(
      horizontal: 16.w,
      vertical: 8.h,
    );
  }
}
