import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final double height;
  final String? hintText;
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
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  const AppTextFormField({
    Key? key,
    this.title: '',
    this.hintText,
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
    this.textInputType,
    this.inputFormatters,
    this.height: 32,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: AppColor.primaryColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
        ),
        SizedBox(height: titleSpacing.h),
        Container(
          height: height.h,
          child: TextFormField(
            controller: controller,
            autofocus: autofocus,
            focusNode: focusNode,
            onChanged: onChanged,
            validator: validator,
            obscureText: obscureText,
            keyboardType: textInputType,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              isDense: true,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              border: OutlineInputBorder(),
              hintText: hintText,
              hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: AppColor.secondaryTextColor.withOpacity(
                      0.3,
                    ),
                  ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.w),
                borderSide: BorderSide(
                  width: 2.0,
                  color: AppColor.tagTextColor.withOpacity(0.1),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.w),
                borderSide: BorderSide(
                  width: 2.0,
                  color: AppColor.tagTextColor.withOpacity(0.1),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class AppSearchTextField extends StatelessWidget {
  final String? labelText;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color borderColor;
  final Brightness? keyboardAppearance;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final FocusNode? focusNode;
  final bool autoFocus;
  final Function? onIconPress;
  final int maxLength;
  final Function? onChanged;

  const AppSearchTextField({
    required this.labelText,
    required this.textEditingController,
    this.textInputType: TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.borderColor: AppColor.primaryColor,
    this.keyboardAppearance,
    this.obscureText = false,
    this.textCapitalization: TextCapitalization.none,
    this.focusNode,
    this.autoFocus: false,
    this.onIconPress,
    this.maxLength: 128,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key('CustomSearchFeild'),
      controller: textEditingController,
      keyboardType: textInputType,
      obscureText: obscureText,
      textCapitalization: textCapitalization,
      autofocus: autoFocus,
      maxLength: maxLength,
      onChanged: onChanged as void Function(String)?,
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: AppColor.lightBorderColor,
              )
            : null,
        hintText: labelText,
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(
                  suffixIcon,
                ),
                onPressed: () => onIconPress!(),
              )
            : null,
        counterText: '',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          borderSide: BorderSide(
            color: AppColor.primaryColor,
          ),
        ),
        contentPadding: EdgeInsets.zero,
      ),
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: AppColor.primaryColor,
            fontSize: 2.sp,
          ),
    );
  }
}
