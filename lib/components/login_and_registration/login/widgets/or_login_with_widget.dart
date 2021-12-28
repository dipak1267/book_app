import 'package:flutter/material.dart';
import 'package:project_beta/src/common_widgets/custom_divider.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class OrLoginWithWidget extends StatelessWidget {
  final String? label;
  final bool isDividerRequired;

  const OrLoginWithWidget({this.label, this.isDividerRequired: true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        isDividerRequired ? Expanded(child: AppDivider()) : Container(),
        Text(
          label!,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: AppColor.darkBackgroundColor.withOpacity(0.3),
              ),
        ).setMarginSymmetric(
          horizontal: 16.w,
        ),
        isDividerRequired ? Expanded(child: AppDivider()) : Container(),
      ],
    );
  }
}
