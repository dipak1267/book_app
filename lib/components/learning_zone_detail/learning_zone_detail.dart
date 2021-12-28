import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/components/learning_zone_detail/widgets/learning_zone_detail_mobile.dart';
import 'package:project_beta/src/template/responsive.dart';

import 'widgets/learning_zone_details_web.dart';

class LearningZoneDetailScreen extends StatelessWidget {
  static const pageLink = "/LearningZoneDetail";

  const LearningZoneDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      tablet: LearningZoneDetailMobile(),
      mobile: LearningZoneDetailMobile(),
      desktop: LearningZoneDetailsWeb(),
    );
  }
}
