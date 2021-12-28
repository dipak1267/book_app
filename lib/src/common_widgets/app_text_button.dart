import 'package:flutter/material.dart';
import 'package:project_beta/theme/app_theme.dart';

class AppTextButton1 extends StatelessWidget {
  final Function onTap;
  final String text1;
  final String text2;
  final TextAlign textAlign;

  const AppTextButton1({
    required this.onTap,
    this.text1: '',
    this.text2: '',
    this.textAlign : TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          text1,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: AppColor.darkBorderColor.withOpacity(0.4),
                fontWeight: FontWeight.w600,
              ),
        ),
        InkWell(
          onTap: () => onTap(),
          child: Text(
            text2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle2!,
          ),
        ),
      ],
    );
  }
}

class AppTextButton2 extends StatelessWidget {
  final String? label;
  final Function? onTap;
  final Color fontColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  const AppTextButton2({
    this.label,
    this.onTap,
    this.fontColor: AppColor.primaryColor,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Text(
        label!,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: fontColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
      ),
    );
  }
}
