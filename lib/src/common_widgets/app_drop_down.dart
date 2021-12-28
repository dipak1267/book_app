import 'package:flutter/material.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class AppDropDownList extends StatelessWidget {
  final List<DropdownMenuItem<String>> items;
  final dynamic value;
  final String? title;
  final double? height;
  final double? width;
  final Function? onChanged;
  final TextStyle? labelTextStyle;
  final Color? borderColor;
  final double? borderWidth;

  const AppDropDownList({
    required this.items,
    this.onChanged,
    this.value,
    this.title,
    this.labelTextStyle,
    this.height: 26,
    this.width: double.infinity,
    this.borderWidth: 1.0,
    this.borderColor: AppColor.greenSpring,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: labelTextStyle ?? Theme.of(context).textTheme.subtitle2!,
        ),
        SizedBox(height: 2.h),
        Container(
          height: height!.h,
          width: width!.w,
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.w),
            border: Border.all(
              color: borderColor!,
            ),
          ),
          child: DropdownButton<String?>(
            underline: Container(),
            isExpanded: true,
            elevation: 1,
            value: value,
            items: items,
            icon: Icon(
              Icons.expand_more,
              size: 32.w,
            ),
            onChanged: (value) => onChanged!(value),
          ),
        )
      ],
    );
  }
}
