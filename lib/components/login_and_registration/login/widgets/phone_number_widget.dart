import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/src/common_widgets/app_text_form_field.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class PhoneNumberWidget extends StatelessWidget {
  final Function(CountryCode)? onChanged;
  final String? initialSelection;
  final TextEditingController? controller;
  final double height;

  const PhoneNumberWidget({
    this.onChanged,
    this.initialSelection,
    this.controller,
    this.height: 28,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      title: 'Mobile Number',
      hintText: 'Mobile Number',
      height: height,
      prefixIcon: CountryListPick(
        onChanged: (value) => onChanged!(value!),
        theme: CountryTheme(
          isShowFlag: true,
          isShowTitle: false,
          isShowCode: true,
          isDownIcon: true,
          showEnglishName: false,
          labelColor: AppColor.primaryColor,
        ),
        useUiOverlay: true,
        useSafeArea: false,
        initialSelection: initialSelection,
      ).setMarginOnly(
        left: 12.w,
        right: Responsive.isMobile(context)  ?12.w : 24.w,
      ),
      controller: controller,
      validator: (value) {},
      titleSpacing: 2.h,
    );
  }
}
