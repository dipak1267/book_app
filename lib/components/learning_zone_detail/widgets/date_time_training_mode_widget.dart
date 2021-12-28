import 'package:flutter/material.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class DateTrainingModeWidget extends StatelessWidget {
  const DateTrainingModeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LanguageConstants.dateAndTime,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontSize: 12.sp,
              ),
        ),
        SizedBox(height: 1.h),
        Text(
          "2 March 2021. 5:00 PM - 6:00 PM",
          style: Theme.of(context).textTheme.caption!.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.greenSpring,
              ),
        ),
        SizedBox(
          height: 6.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LanguageConstants.trainingMode,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 12.sp),
                ),
                SizedBox(height: 1.h),
                Text(
                  LanguageConstants.online,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.greenSpring),
                ),
              ],
            ),
            Spacer(),
            Expanded(
              flex: 0,
              child: AppButton(
                onTap: () {},
                label: LanguageConstants.viewInMap,
                height: 18.h,
                fontSize: 9.sp,
                backgroundColor: AppColor.primaryColor,
                textColor: AppColor.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
