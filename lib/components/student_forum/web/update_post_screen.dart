import 'package:flutter/material.dart';
import 'package:project_beta/components/student_forum/widgets/update_post_mobile_screen.dart';
import 'package:project_beta/src/template/responsive.dart';

class UpdatePostScreen extends StatelessWidget {
  final String? id;

  UpdatePostScreen({this.id});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      tablet: UpdatePostMobileScreen(id: id),
      mobile: UpdatePostMobileScreen(id: id),
      desktop: UpdatePostMobileScreen(id: id),
    );
  }
}
