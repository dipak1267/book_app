import 'package:flutter/material.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';

class AppListTile extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final TextStyle? titleTextStyle;
  final TextStyle? subTitleTextStyle;

  const AppListTile(
      {this.title, this.subTitle, this.titleTextStyle, this.subTitleTextStyle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title!,
        textAlign: TextAlign.center,
        style: titleTextStyle,
      ).setMarginOnly(
        bottom: 4.h,
      ),
      subtitle: Text(
        subTitle!,
        textAlign: TextAlign.center,
        style: subTitleTextStyle,
      ),
    );
  }
}
