import 'package:flutter/material.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'app_text_form_field.dart';

class PasswordWidget extends StatelessWidget {
  final String? passwordOneHint;
  final String? passwordTwoHint;
  final String? passwordTitleOne;
  final String? passwordTitleTwo;
  final Function(String)? onChangedPassOne;
  final Function(String)? onChangedPassTwo;
  final Function(String)? validatorPassOne;
  final Function(String)? validatorPassTwo;
  final double titleSpacing; // Spacing between the title and textField
  final double widgetSpacing; // Spacing between the two textFields
  final double? iconSize;
  final TextEditingController? passwordFieldOneController;
  final TextEditingController? passwordFieldTwoController;
  final bool? obscureText;
  final bool? autofocus;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final FocusNode? focusNode;

  PasswordWidget({
    this.passwordFieldOneController,
    this.passwordFieldTwoController,
    this.titleSpacing: 2,
    this.widgetSpacing: 8,
    this.obscureText: false,
    this.prefixIcon,
    this.autofocus: false,
    this.suffixIcon,
    this.textInputType,
    this.focusNode,
    this.passwordOneHint,
    this.passwordTwoHint,
    this.passwordTitleOne,
    this.passwordTitleTwo,
    this.onChangedPassOne,
    this.onChangedPassTwo,
    this.validatorPassOne,
    this.validatorPassTwo,
    this.iconSize: 16,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: passwordOneHint,
          title: passwordTitleOne,
          titleSpacing: titleSpacing,
          onChanged: (value) => onChangedPassOne!(value),
          controller: passwordFieldOneController,
          validator: (value) => validatorPassOne!(value!),
          obscureText: obscureText!,
          prefixIcon: Icon(
            Icons.lock_outline,
            color: AppColor.primaryColor,
            size: iconSize,
          ),
          textInputType: textInputType,
          autofocus: autofocus!,
          suffixIcon: suffixIcon,
        ),
        SizedBox(height: widgetSpacing.h),
        AppTextFormField(
          hintText: passwordTitleTwo,
          title: passwordTitleTwo,
          titleSpacing: 2,
          onChanged: (value) => onChangedPassTwo!(value),
          controller: passwordFieldTwoController,
          validator: (value) => validatorPassTwo!(value!),
          obscureText: obscureText!,
          prefixIcon: Icon(
            Icons.lock_outline,
            color: AppColor.primaryColor,
            size: iconSize,
          ),
          textInputType: textInputType,
          autofocus: autofocus!,
          suffixIcon: suffixIcon,
          focusNode: focusNode,
        ),
      ],
    );
  }
}

class PasswordRowWidget extends StatelessWidget {
  final String? passwordOneHint;
  final String? passwordTwoHint;
  final String? passwordTitleOne;
  final String? passwordTitleTwo;
  final Function(String)? onChangedPassOne;
  final Function(String)? onChangedPassTwo;
  final Function(String)? validatorPassOne;
  final Function(String)? validatorPassTwo;
  final double titleSpacing; // Spacing between the title and textField
  final double widgetSpacing; // Spacing between the two textFields
  final double? iconSize;
  final TextEditingController? passwordFieldOneController;
  final TextEditingController? passwordFieldTwoController;
  final bool? obscureText;
  final bool? autofocus;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final FocusNode? focusNode;

  PasswordRowWidget({
    this.passwordFieldOneController,
    this.passwordFieldTwoController,
    this.titleSpacing: 2,
    this.widgetSpacing: 8,
    this.obscureText: false,
    this.prefixIcon,
    this.autofocus: false,
    this.suffixIcon,
    this.textInputType,
    this.focusNode,
    this.passwordOneHint,
    this.passwordTwoHint,
    this.passwordTitleOne,
    this.passwordTitleTwo,
    this.onChangedPassOne,
    this.onChangedPassTwo,
    this.validatorPassOne,
    this.validatorPassTwo,
    this.iconSize: 16,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
            hintText: passwordOneHint,
            title: passwordTitleOne,
            titleSpacing: titleSpacing,
            onChanged: (value) => onChangedPassOne!(value),
            controller: passwordFieldOneController,
            validator: (value) => validatorPassOne!(value!),
            obscureText: obscureText!,
            prefixIcon: Icon(
              Icons.lock_outline,
              color: AppColor.primaryColor,
              size: iconSize,
            ),
            textInputType: textInputType,
            autofocus: autofocus!,
            suffixIcon: suffixIcon,
            focusNode: focusNode,
          ),
        ),
        SizedBox(width: widgetSpacing.w),
        Expanded(
          child: AppTextFormField(
            hintText: passwordTitleTwo,
            title: passwordTitleTwo,
            titleSpacing: titleSpacing,
            onChanged: (value) => onChangedPassTwo!(value),
            controller: passwordFieldOneController,
            validator: (value) => validatorPassTwo!(value!),
            obscureText: obscureText!,
            prefixIcon: Icon(
              Icons.lock_outline,
              color: AppColor.primaryColor,
              size: iconSize,
            ),
            textInputType: textInputType,
            autofocus: autofocus!,
            suffixIcon: suffixIcon,
            focusNode: focusNode,
          ),
        ),
      ],
    );
  }
}
