import 'package:flutter/material.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class CustomDivider extends StatelessWidget {
  final double thickness;
  final double margin;
  final Color color;

  const CustomDivider({
    this.thickness = 0.05,
    this.margin = 4,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: thickness.h,
      margin: EdgeInsets.symmetric(
        horizontal: margin.w,
      ),
      color: color,
    );
  }
}

class AppDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h),
      child: Divider(
        height: 0.5.h,
        color: AppColor.unselectedColor.withOpacity(0.3),
      ),
    );
  }
}
