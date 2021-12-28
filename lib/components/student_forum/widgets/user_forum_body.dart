import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/student_forum/widgets/user_forum_card.dart';
import 'package:project_beta/controller/student_forum/forum_getx_controller.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';

class UserForumBody extends StatelessWidget {
  const UserForumBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForumGetXController>(
      init: ForumGetXController(),
      builder: (controller) {
        return ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: controller.data.length,
          itemBuilder: (context, index) {
            return UserForumCard(
              userForumModel: controller.data[index],
              onTap: () => Beamer.of(context).beamToNamed(
                AppRoutes.studentForumDetails,
              ),
            );
          },
        ).setMarginSymmetric(
          horizontal: 24.w,
          vertical: 4.h,
        );
      },
    );
  }
}
