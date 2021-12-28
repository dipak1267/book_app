import 'package:flutter/material.dart';
import 'package:project_beta/components/draft/widgets/draft_mobile_screen.dart';
import 'package:project_beta/src/template/responsive.dart';

class DraftScreen extends StatelessWidget {
  const DraftScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: DraftMobileScreen(),
      mobile: DraftMobileScreen(),
      tablet: DraftMobileScreen(),
    );
  }
}
