import 'package:flutter/material.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String? title;
  final FocusNode? focusNode;
  final bool autofocus;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final double titleSpacing;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? minLines;
  final int? maxLines;
  final Color? borderColor;
  final double? borderWidth;
  final TextStyle? textStyle;
  final String? Function(String?)? validator;

  const AppTextFormField({
    Key? key,
    this.title,
    required this.hintText,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.validator,
    this.titleSpacing: 2,
    this.fontSize,
    this.fontWeight,
    this.minLines = 1,
    this.maxLines = 1,
    this.borderColor = AppColor.greenSpring,
    this.borderWidth = 1,
    this.textStyle,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: textStyle ??
              Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                  ),
        ),
        SizedBox(height: titleSpacing.h),
        TextFormField(
          minLines: minLines!,
          maxLines: maxLines!,
          controller: controller,
          autofocus: autofocus,
          focusNode: focusNode,
          onChanged: onChanged,
          validator: validator,
          obscureText: obscureText,
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(),
            hintText: hintText,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.w),
              borderSide: BorderSide(
                color: borderColor!,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.w),
              borderSide: BorderSide(
                width: borderWidth!,
                color: borderColor!,
              ),
            ),
          ),
        )
      ],
    );
  }
}
