import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/src/common_widgets/circular_icon_container.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class WebAppBar extends StatelessWidget {
  final String pageTitle;
  final String? name;
  final String? userType;

  const WebAppBar(
      {this.pageTitle: 'HOME', this.name: 'Niyaz', this.userType: 'Student'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      color: AppColor.white,
      child: Row(
        children: [
          Expanded(
            child: Text(
              pageTitle,
              style: Theme.of(context).textTheme.headline4,
            ).setMarginOnly(
              left: 48.w,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  AppAssets.search,
                ),
              ).setMarginOnly(
                right: 32.w,
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  AppAssets.bellIcon,
                ),
              ).setMarginOnly(
                right: 36.w,
              ),
              profileWidget(
                context,
                userName: name,
                userType: userType,
              ).setMarginOnly(
                right: 36.w,
              ),
            ],
          ).setMarginOnly(
            right: 48.w,
          ),
        ],
      ),
    );
  }
}

Widget profileWidget(context, {final userName, final userType}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircularIconContainer(
        height: 24.h,
        padding: 8,
        avatar: AppAssets.health,
        iconBackgroundColor: AppColor.primaryColor.withOpacity(0.1),
      ),
      SizedBox(
        width: 8.w,
      ),
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              userName,
              style: Theme.of(context).textTheme.subtitle2,
            ).setMarginOnly(
              bottom: 4.h,
            ),
            Text(
              userType!,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: AppColor.darkBorderColor.withOpacity(0.3),
                  ),
            ),
          ],
        ),
      )
    ],
  );
}
