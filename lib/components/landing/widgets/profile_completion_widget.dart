
import 'package:flutter/material.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class ProfileCompletionWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LanguageConstants.profileCompletion,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            Text(
              '90%',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: AppColor.secondaryColor,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ],
        ),
        SizedBox(
          height: 4.h,
        ),
        Container(
          height: 6.h,
          decoration: BoxDecoration(
            color: AppColor.secondaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(12.w),
            ),
          ),
          width: MediaQuery.of(context).size.width,
        ),
      ],
    ).setMarginOnly(right: 24.w);
  }
}
