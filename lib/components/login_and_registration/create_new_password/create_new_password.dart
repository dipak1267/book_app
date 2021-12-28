import 'package:flutter/material.dart';
import 'package:project_beta/src/template/desktop_wrapper.dart';
import 'package:project_beta/src/template/responsive.dart';

import 'web/create_new_password_web.dart';
import 'widgets/password_body.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Scaffold(
        body: PasswordBody(),
      ),
      tablet: Scaffold(
        body: PasswordBody(),
      ),
      desktop: DesktopWrapper(
        child: CreateNewPasswordWeb(),
      ),
    );
  }
}
