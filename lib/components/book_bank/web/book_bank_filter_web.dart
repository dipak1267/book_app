import 'package:flutter/material.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class BookBankFilterWeb extends StatelessWidget {
  const BookBankFilterWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              AppDropDownList(
                title: LanguageConstants.title,
                items: [],
                height: 22,
              ),
              SizedBox(height: 4.h),
              AppDropDownList(
                title: LanguageConstants.category,
                items: [],
                value: 'Category',
                height: 22,
              ),
              SizedBox(height: 4.h),
              AppDropDownList(
                title: LanguageConstants.bookType,
                height: 22,
                items: [],
              ),
              SizedBox(height: 4.h),
              AppDropDownList(
                title: LanguageConstants.priceRange,
                height: 22,
                items: [],
              ),
              SizedBox(height: 4.h),
              AppDropDownList(
                title: LanguageConstants.bookCondition,
                height: 22,
                items: [],
              ),
              SizedBox(height: 4.h),
              AppDropDownList(
                title: 'Author Name',
                height: 22,
                items: [],
              ),
              SizedBox(height: 4.h),
              AppDropDownList(
                title: 'Book ',
                height: 22,
                items: [],
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        AppButton(
          onTap: () {},
          label: 'SEARCH',
          backgroundColor: AppColor.primaryColor,
          height: 28.h,
          fontSize: 20.sp,
          textColor: AppColor.backgroundColor,
        ),
      ],
    );
  }
}
