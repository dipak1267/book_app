import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'dietitian_list_card_web.dart';

class DietitianListWebBody extends StatelessWidget {
  const DietitianListWebBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                LanguageConstants.dietitianList,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            GestureDetector(
              onTap: () => Beamer.of(context).beamToNamed(AppRoutes.bookBankFilter),
              child: SvgPicture.asset(
                AppAssets.filter,
                color: AppColor.primaryColor,
              ).setMarginOnly(
                right: 24.w,
              ),
            )
          ],
        ).setMarginOnly(bottom: 12.h, top: 6.h),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) => DietitianWebCard().setMarginOnly(
              bottom: 8.h,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisExtent: 144.h,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 16.w,
            ),
          ),
        ),
      ],
    ).setMarginSymmetric(
      horizontal: 24.w,
      vertical: 12.h,
    );
  }
}
