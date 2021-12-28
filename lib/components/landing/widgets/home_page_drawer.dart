import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/circular_icon_container.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircularIconContainer(
          height: 24.h,
          padding: 8,
          avatar: AppAssets.business,
          iconBackgroundColor: AppColor.primaryColor.withOpacity(
            0.1,
          ),
        ).setMarginOnly(
          top: 24.h,
        ),
        Center(
          child: InkWell(
            onTap: () =>
                Beamer.of(context).beamToNamed(AppRoutes.studentProfile),
            child: Text(
              LanguageConstants.profile,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ),
      ],
    );
  }
}
