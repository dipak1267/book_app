import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/student_forum/widgets/user_forum_card.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/student_forum/forum_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class UserForumWebScreen extends StatelessWidget {
  final Function? onTapped;

  UserForumWebScreen({this.onTapped});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForumGetXController>(
      init: ForumGetXController(),
      builder: (controller) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    LanguageConstants.discussionForum,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                GestureDetector(
                  onTap: () =>
                      Beamer.of(context).beamToNamed(AppRoutes.forumFilter),
                  child: SvgPicture.asset(
                    AppAssets.filter,
                    color: AppColor.primaryColor,
                  ).setMarginOnly(
                    right: 26.w,
                  ),
                )
              ],
            ).setMarginOnly(
              bottom: 8.h,
              top: 12.h,
              left: 26.w,
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Beamer.of(context).beamToNamed(
                        AppRoutes.studentForumDetails,
                      ),
                      child:
                          UserForumCard(userForumModel: controller.data[index])
                              .setMarginOnly(
                        bottom: 8.h,
                      ),
                    );
                  },
                ),
              ).setMarginSymmetric(
                horizontal: 24.w,
                vertical: 8.h,
              ),
            ),
          ],
        );
      },
    );
  }
}
