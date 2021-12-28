import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/details_box_widget.dart';
import 'package:project_beta/src/screen_utils.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: DetailsBox(
                onTap: () => Beamer.of(context).beamToNamed(
                  AppRoutes.selectCategory,
                ),
                avatarUrl: AppAssets.books,
                title: LanguageConstants.bookBank,
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: DetailsBox(
                onTap: () => Beamer.of(context).beamToNamed(
                  AppRoutes.studentForum,
                ),
                avatarUrl: AppAssets.studentHome,
                title: LanguageConstants.studentForum,
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: DetailsBox(
                avatarUrl: AppAssets.career,
                title: LanguageConstants.careerOptions,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
            Expanded(
              child: DetailsBox(
                avatarUrl: AppAssets.goal,
                title: LanguageConstants.trendingCareers,
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: DetailsBox(
                onTap: () => Beamer.of(context).beamToNamed(AppRoutes.more),
                avatarUrl: AppAssets.dotsIcon,
                title: '${LanguageConstants.more}\n',
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ],
    );
  }
}
