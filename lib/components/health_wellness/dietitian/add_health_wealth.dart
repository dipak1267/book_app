import 'package:flutter/material.dart';
import 'package:project_beta/components/health_wellness/widgets/add_health_wellness_body.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class AddHealthAndWealth extends StatelessWidget {
  const AddHealthAndWealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: SliverAppBarTemplate(
        backgroundColor: AppColor.primaryColor,
        title: LanguageConstants.addHealthWellness,
        expandedHeight: 48.h,
        fontSize: 16.sp,
        leading: true,
        topHeight: 40,
        body: AddHealthWellnessBody(),
      ),
      tablet: SliverAppBarTemplate(
        backgroundColor: AppColor.primaryColor,
        title: LanguageConstants.addHealthWellness,
        expandedHeight: 48.h,
        fontSize: 16.sp,
        topHeight: 32,
        body: AddHealthWellnessBody(),
      ),
      desktop: WebTemplate(
        pageTitle: LanguageConstants.addHealthWellness,
        body: AddHealthWellnessBody().setMarginSymmetric(
          horizontal: 48.w,
        ),
      ),
    );
  }
}

class SelectiveContainer extends StatelessWidget {
  final String label;
  final IconData? icon;

  const SelectiveContainer({Key? key, required this.label, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102.w,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(22.w))),
      padding: EdgeInsets.all(10.w),
      child: Row(
        children: [
          Text(label,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: AppColor.primaryColor)),
          SizedBox(width: 10.w),
          Icon(icon)
        ],
      ),
    );
  }
}
