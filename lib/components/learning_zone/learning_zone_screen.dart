import 'package:flutter/cupertino.dart';
import 'package:project_beta/components/learning_zone/widgets/learning_zone_mobile_screen.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';

import 'web/learning_zone_web.dart';

class LearningZoneScreen extends StatelessWidget {
  static const pageLink = "/LearningZoneScreen";

  const LearningZoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: LearningZoneMobileScreen(),
      tablet: LearningZoneMobileScreen(),
      desktop: WebTemplate(
        pageTitle: LanguageConstants.learningZone,
        body: LearningZoneWeb(),
      ),
    );
  }
}
