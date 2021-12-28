import 'package:flutter/material.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class CustomBoxContainer extends StatelessWidget {
  final double height;
  final double width;
  final String? content;
  final Color backGroundColor;
  final Color textColor;
  final double fontSize;

  const CustomBoxContainer({
    Key? key,
    this.height: 22,
    this.width: 48,
    this.content,
    this.backGroundColor: AppColor.fuelYellow,
    this.textColor: AppColor.backgroundColor,
    this.fontSize: 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(
          4.w,
        ),
      ),
      padding: EdgeInsets.all(
        2.w,
      ),
      child: Center(
        child: Text(
          content!,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: textColor,
                fontSize: fontSize.sp,
              ),
        ),
      ),
    );
  }
}
