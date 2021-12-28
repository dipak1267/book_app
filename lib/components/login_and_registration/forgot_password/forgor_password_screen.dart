import 'package:flutter/material.dart';
import 'package:project_beta/src/template/desktop_wrapper.dart';
import 'package:project_beta/src/template/responsive.dart';

import 'web/forgot_password_web.dart';
import 'widgets/forgot_password_footer.dart';
import 'widgets/forgot_password_header.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ForGotPasswordBody(),
              ForgotPasswordFooter(),
            ],
          ),
        ),
      ),
      tablet: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            ForGotPasswordBody(),
            ForgotPasswordFooter(),
          ],
        ),
      )),
      desktop: DesktopWrapper(child: ForgotPasswordWeb()),
    );
  }
}
