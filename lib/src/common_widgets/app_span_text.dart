import 'package:flutter/material.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class CustomSpanText extends StatelessWidget {
  final String? head;
  final Color? headColor;
  final double headFontSize;
  final FontWeight headFontWeight;
  final String? body;
  final Color bodyColor;
  final double bodyFontSize;
  final FontWeight bodyFontWeight;

  const CustomSpanText({
    required this.head,
    this.headColor,
    this.headFontSize: 1.75,
    this.headFontWeight: FontWeight.w400,
    required this.body,
    this.bodyColor: AppColor.primaryColor,
    this.bodyFontSize: 1.75,
    this.bodyFontWeight: FontWeight.w700,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: head,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: headColor ?? AppColor.lightBorderColor,
              fontSize: headFontSize.sp,
              fontWeight: headFontWeight,
            ),
        children: [
          TextSpan(
            text: '\t\t$body',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: bodyColor,
                  fontSize: bodyFontSize.sp,
                  fontWeight: bodyFontWeight,
                ),
          )
        ],
      ),
    );
  }
}
