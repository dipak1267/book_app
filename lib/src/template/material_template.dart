import 'package:flutter/material.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class MaterialTemplate extends StatelessWidget {
  final Widget? child;
  final double elevation;
  final double radius;
  final Color backGroundColor;

  const MaterialTemplate({
    this.child,
    this.elevation: 2.0,
    this.radius: 4.0,
    this.backGroundColor: AppColor.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      color: backGroundColor,
      shadowColor: AppColor.unselectedColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            radius.w,
          ),
        ),
      ),
      child: child,
    );
  }
}

class CardTemplate extends StatelessWidget {
  final Color? backgroundColor;
  final double? elevation;
  final Widget? child;
  final double radius;

  const CardTemplate({
    this.backgroundColor: AppColor.white,
    this.elevation: 2,
    this.child,
    this.radius: 12,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius.w),
      ),
      child: child,
    );
  }
}
