import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/theme/app_theme.dart';

class CommonAppBar {
  static const Widget _defaultLeading = SizedBox();
  static const List<Widget> _defaultActions = [];

  static appBar({
    leading: _defaultLeading,
    actions: _defaultActions,
    titleText: "",
    backgroundColor: AppColor.primaryColor,
  }) {
    return AppBar(
      elevation: 0,
      backgroundColor: backgroundColor,
      title: Text(
        titleText,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      leading: leading,
      actions: actions,
      centerTitle: true,
    );
  }
}
