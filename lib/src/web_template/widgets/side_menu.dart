import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/instance_manager.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/auth/auth_controller.dart';
import 'package:project_beta/services/auth/auth.dart';
import 'package:project_beta/src/common_widgets/custom_divider.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/users_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: AppColor.white,
        border: Border(
          right: BorderSide(
            width: 1,
            color: AppColor.darkBorderColor.withOpacity(
              0.03,
            ),
          ),
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppAssets.burgerBar,
            ),
          ).setMarginOnly(
            bottom: 12.h,
            right: 24.w,
            top: 8.h,
          ),
          Image.asset(
            AppAssets.logoPng,
            height: 24.h,
            color: AppColor.secondaryColor,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                drawerTab(
                  context,
                  onClick: () {},
                  icon: AppAssets.art,
                  title: LanguageConstants.artsFilm,
                ),
                AppDivider().setMarginOnly(
                  left: 24.w,
                  top: 4.h,
                  bottom: 12.h,
                ),
                drawerTab(
                  context,
                  onClick: () {},
                  icon: AppAssets.sciences,
                  title: LanguageConstants.scienceFiction,
                ),
                AppDivider().setMarginOnly(
                  left: 24.w,
                  top: 4.h,
                  bottom: 12.h,
                ),
                drawerTab(
                  context,
                  onClick: () {},
                  icon: AppAssets.exam,
                  title: LanguageConstants.examPreparation,
                ),
                AppDivider().setMarginOnly(
                  left: 24.w,
                  top: 4.h,
                  bottom: 12.h,
                ),
                drawerTab(
                  context,
                  onClick: () {},
                  icon: AppAssets.action,
                  title: LanguageConstants.actionAdventure,
                ),
                AppDivider().setMarginOnly(
                  left: 24.w,
                  top: 4.h,
                  bottom: 12.h,
                ),
                drawerTab(
                  context,
                  onClick: () {},
                  icon: AppAssets.scientist,
                  title: LanguageConstants.scienceFiction,
                ),
                AppDivider().setMarginOnly(
                  left: 24.w,
                  top: 4.h,
                  bottom: 12.h,
                ),
                drawerTab(
                  context,
                  onClick: () {
                    AuthService().logout(context);
                    Get.find<AuthController>().setCurrentUser(UsersModel());
                    Beamer.of(context).beamToNamed(AppRoutes.signUpAs);
                  },
                  icon: AppAssets.action,
                  title: LanguageConstants.logout,
                ),
              ],
            ).setMarginOnly(
              top: 48.h,
            ),
          )
        ],
      ).setMarginOnly(
        bottom: 48.h,
      ),
    );
  }
}

Widget drawerTab(context, {required icon, required title, required onClick}) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: onClick,
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            height: 12.h,
            width: 24.w,
          ),
          SizedBox(
            width: 6.w,
          ),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          )
        ],
      ).setMarginOnly(
        left: 24.w,
        top: 4.h,
        bottom: 4.h,
      ),
    ),
  );
}
