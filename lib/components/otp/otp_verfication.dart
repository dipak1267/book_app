import 'package:flutter/material.dart';
import 'package:project_beta/components/otp/widgets/otp_verification_mobile.dart';
import 'package:project_beta/src/template/responsive.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      tablet: OTPVerificationMobile(),
      desktop: OTPVerificationMobile(),
      mobile: OTPVerificationMobile(),
    );
  }
}
