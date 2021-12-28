import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/custom_divider.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class ForumDetailBody extends StatelessWidget {
  const ForumDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Responsive.isDesktop(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    LanguageConstants.discussionForum,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ).setMarginOnly(
                left: 24.w,
                top: 12.h,
              )
            : Container(),
        Expanded(
          child: CardTemplate(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.female,
                      height: 24.h,
                      width: 24.w,
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Alex',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        subtitle: Text(
                          '5 days ago',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ),
                    Text(
                      LanguageConstants.category,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: AppColor.secondaryColor,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Title',
                      style: Theme.of(context).textTheme.subtitle2!,
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  LanguageConstants.generalContent,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: AppColor.greenSpring,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                AppDivider().setMarginSymmetric(
                  vertical: 4.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: AppColor.fuelYellow,
                      size: 20.w,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Like clicked");
                      },
                      child: Text(
                        "200k Likes",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    Icon(
                      Icons.question_answer,
                      color: AppColor.fuelYellow,
                      size: 20.w,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Comment clicked");
                      },
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "100k Comments",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ).setMarginSymmetric(
              horizontal: 24.w,
              vertical: 8.h,
            ),
          ).setMarginSymmetric(
            horizontal: 24.w,
            vertical: 8.h,
          ),
        ),
      ],
    );
  }
}
