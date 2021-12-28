import 'package:flutter/material.dart';
import 'package:project_beta/components/dietician_profile/widgets/personal_detail_mobile.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'widgets/personal_detail_body.dart';

class PersonalDetailScreen extends StatelessWidget {
  static final pageLink = "/PersonalDetailScreen";

  @override
  Widget build(BuildContext context) {
    return Responsive(
      tablet: PersonalDetailMobile(),
      mobile: PersonalDetailMobile(),
      desktop: WebTemplate(
        pageTitle: LanguageConstants.wellnessCenter,
        body: PersonalDetailsBody().setMarginSymmetric(
          horizontal: 48.w,
          vertical: 8.h,
        ),
      ),
    );
  }
}
