
import 'package:flutter/material.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class AppFloatingActionButton extends StatelessWidget {
  final Function? onTap;

  const AppFloatingActionButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Container(
        padding: EdgeInsets.all(4.w),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.backgroundColor,
          border: Border.all(
            color: AppColor.primaryColor.withOpacity(
              0.5,
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.primaryColor,
          ),
          child: Icon(
            Icons.add,
            size: 48.w,
            color: AppColor.backgroundColor,
          ),
        ),
      ).setMarginOnly(right: 24.w, bottom: 20.h),
    );
  }
}
