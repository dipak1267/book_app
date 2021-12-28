import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class AppCheckBox extends StatelessWidget {
  final bool value;
  final String? label;
  final Function(bool) onChanged;
  final Color? checkColor;
  final Color? activeColor;

  const AppCheckBox({
    this.value: false,
    required this.onChanged,
    this.label,
    this.checkColor,
    this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (value) => onChanged(value!),
          checkColor: checkColor,
          activeColor: activeColor,
          fillColor: MaterialStateProperty.all(AppColor.backgroundColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.w),
          ),
          side: BorderSide(
            style: BorderStyle.solid,
            width: 1,
            color: AppColor.darkBorderColor,
          ),
        ),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
