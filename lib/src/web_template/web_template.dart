import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'widgets/side_menu.dart';
import 'widgets/web_app_bar.dart';

class WebTemplate extends StatelessWidget {
  final Widget? body;
  final String? pageTitle;
  final Widget? floatingActionButton;

  const WebTemplate({
    this.body,
    this.pageTitle: 'HOME',
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightYellow,
      floatingActionButton: floatingActionButton,
      body: Builder(builder: (context) {
        return Row(
          children: [
            SideMenu(),
            Expanded(
              child: Column(
                children: [
                  WebAppBar(
                    pageTitle: pageTitle!,
                  ),
                  Expanded(
                    child: body!,
                  )
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
