import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/components/student_forum/web/user_forum_web_screen.dart';
import 'package:project_beta/components/student_forum/widgets/user_forum_mobile_screen.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_floating_action_button.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';

class UserForumScreen extends StatelessWidget {
  static const pageLink = "/UserDiscussionForum";
  final Function? onTapped;

  UserForumScreen({this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: UserForumMobileScreen(),
      tablet: UserForumMobileScreen(),
      desktop: WebTemplate(
        pageTitle: LanguageConstants.discussionForum,
        floatingActionButton: AppFloatingActionButton(
          onTap: () => Beamer.of(context).beamToNamed(AppRoutes.addPost),
        ),
        body: UserForumWebScreen(
          onTapped: () {},
        ),
      ),
    );
  }
}
