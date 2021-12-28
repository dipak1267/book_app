import 'package:flutter/material.dart';
import 'package:project_beta/components/profile/widgets/upload_image_widget.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class AddBookWeb extends StatelessWidget {
  const AddBookWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UploadImageWidget(
                profileTag: '+',
                fontSize: 36.sp,
              ),
              SizedBox(height: 2.h),
              Text(
                LanguageConstants.addBookCoverPic,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: AppColor.darkBorderColor.withOpacity(0.5)),
              ),
              SizedBox(height: 8.h),
              AppDropDownList(
                title: LanguageConstants.titleName,
                items: [],
                height: 22,
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.category,
                items: [],
                height: 22,
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.kClass,
                items: [],
                height: 22,
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.subject,
                items: [],
                height: 22,
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.board,
                items: [],
                height: 22,
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.language,
                items: [],
                height: 22,
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.authorName,
                items: [],
                height: 22,
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.isbnNo,
                items: [],
                height: 22,
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.bookType,
                items: [],
                height: 22,
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.bookCondition,
                items: [],
                height: 22,
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.bookTag,
                items: [],
                height: 22,
              ),
              SizedBox(height: 6.h),
              AppDropDownList(
                title: LanguageConstants.priceRange,
                items: [],
                height: 22,
              ),
            ],
          ).setMarginOnly(
            top: 8.h,
            bottom: 8.h,
          ),
        ),
        SizedBox(height: 8.h),
        AppButton(
          onTap: () {},
          label: LanguageConstants.publish,
          backgroundColor: AppColor.primaryColor,
          height: 22.h,
          fontSize: 18.sp,
          textColor: AppColor.backgroundColor,
        ).setMarginOnly(
          bottom: 8.h,
        ),
        SizedBox(height: 8.h),
      ],
    );
  }
}