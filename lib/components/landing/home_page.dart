import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/services/auth/auth.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'web/home_page_web.dart';
import 'widgets/home_page_body.dart';
import 'widgets/home_page_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: AppBarTemplate(
        toolbarHeight: 18.h,
        title: LanguageConstants.home,
        isDrawer: true,
        backGroundColor: AppColor.lightYellow,
        drawer: Drawer(
          elevation: 1,
          child: HomePageDrawer(),
        ),
        suffixWidget: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none_outlined,
            color: AppColor.primaryColor,
            size: 32.w,
          ),
        ).setMarginOnly(
          right: 24.w,
        ),
        body: HomeBody().setMarginSymmetric(
          horizontal: 24.w,
          vertical: 8.h,
        ),
      ),
      tablet: AppBarTemplate(
        toolbarHeight: 18.h,
        title: LanguageConstants.home,
        isDrawer: true,
        backGroundColor: AppColor.lightYellow,
        drawer: Drawer(
          elevation: 1,
          child: HomePageDrawer(),
        ),
        suffixWidget: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none_outlined,
            color: AppColor.primaryColor,
            size: 32.w,
          ),
        ).setMarginOnly(
          right: 24.w,
        ),
        body: HomeBody().setMarginSymmetric(
          horizontal: 24.w,
          vertical: 8.h,
        ),
      ),
      desktop: WebTemplate(
        floatingActionButton: GestureDetector(
          child: Text('Log out'),
          onTap: () async {
            await AuthService().logout(context);
            Beamer.of(context).beamToNamed(AppRoutes.signUpAs);
          },
        ),
        pageTitle: LanguageConstants.home,
        body: HomePageWeb(),
      ),
    );
  }
}
