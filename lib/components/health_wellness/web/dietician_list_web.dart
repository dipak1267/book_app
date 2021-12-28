import 'package:flutter/material.dart';
import 'package:project_beta/components/health_wellness/web/widgets/dietitian_list_web_body.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/web_template/web_template.dart';

class DietitianListWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebTemplate(
      body: DietitianListWebBody(),
      pageTitle: LanguageConstants.dietitianList,
    );
  }
}
