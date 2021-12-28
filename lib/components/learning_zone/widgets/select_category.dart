import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:project_beta/components/student_forum/widgets/filter_bottom_sheet.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class LearningSelectCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBarTemplate(
      backGroundColor: AppColor.pampas,
      toolbarHeight: 18.h,
      suffixWidget: InkWell(
        onTap: () {
          FilterBottomSheet.get(context);
        },
        child: Icon(
          Icons.search,
          color: AppColor.primaryColor,
          size: 24.w,
        ),
      ).setMarginOnly(
        right: 24.w,
      ),
      title: LanguageConstants.selectCategory.toUpperCase(),
      elevation: 1,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return CardTemplate(
                  elevation: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category 1",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: AppColor.nevada),
                      ),
                      Icon(
                        Icons.radio_button_unchecked,
                        color: AppColor.doveGrey,
                      )
                    ],
                  ).setMarginSymmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
                );
              },
            ),
          ),
          AppButton(
            height: 22.h,
            onTap: () {
              print("continue clicked");
            },
            borderRadius: BorderRadius.circular(2.0),
            label: LanguageConstants.kContinue.toUpperCase(),
            backgroundColor: AppColor.primaryColor,
            textStyle: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColor.white,
                ),
          ).setMarginOnly(
            top: 8.h,
          ),
        ],
      ).setMarginSymmetric(
        horizontal: 24.w,
        vertical: 8.h,
      ),
    );
  }
}
