import 'package:flutter/material.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';

import 'personal_detail_body.dart';

class PersonalDetailMobile extends StatelessWidget {
  const PersonalDetailMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBarTemplate(
      title: LanguageConstants.personalDetails,
      expandedHeight: 48.h,
      fontSize: 18.sp,
      subTitleFontSize: 14.sp,
      subTitle: LanguageConstants.letsGetYouUpAllDetails,
      body: PersonalDetailsBody(),
    );
  }
}
