import 'package:flutter/material.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class SimilarBooksWidgetWeb extends StatelessWidget {
  const SimilarBooksWidgetWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                8.w,
              ),
            ),
            color: AppColor.primaryColor,
          ),
          height: 58.h,
          width: 76.w,
        ),
        SizedBox(width: 6.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.fuelYellow),
                  ),
                  Icon(
                    Icons.star,
                    color: AppColor.fuelYellow,
                    size: 12.sp,
                  )
                ],
              ),
              SizedBox(height: 4.h),
              Text(
                'Book Name',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: 4.h),
              Text(
                LanguageConstants.general,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColor.darkBorderColor.withOpacity(
                        0.3,
                      ),
                    ),
              ),
              SizedBox(height: 4.h),
              Text(
                'By Author Name',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ],
    ).setMarginSymmetric(
      horizontal: 12.w,
      vertical: 4.h,
    );
  }
}
