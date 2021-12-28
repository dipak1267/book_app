
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:project_beta/src/common_widgets//app_button.dart';
import 'package:project_beta/theme/app_theme.dart';

class OTPVerificationMobile extends StatelessWidget {
  final TextEditingController mobileNumberController = new TextEditingController();
  final TextEditingController otpController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verificaiton"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.0),
          child: ListView(
            children: [
              SizedBox(
                height: 50.0,
              ),
              TextField(
                decoration: InputDecoration(hintText: "Mobile Number"),
                controller: mobileNumberController,
              ),
              SizedBox(
                height: 50.0,
              ),
              TextField(
                decoration: InputDecoration(hintText: "OTP Number"),
                controller: otpController,
              ),
              SizedBox(
                height: 50.0,
              ),
              AppButton(
                onTap: verifyOTP,
                backgroundColor: AppColor.primaryColor,
                textColor: AppColor.white,
                label: "SEND OTP",
              ),
              SizedBox(
                height: 50.0,
              ),
              AppButton(
                onTap: sendOTPRequest,
                backgroundColor: AppColor.primaryColor,
                textColor: AppColor.white,
                label: "VERIFY OTP",
              ),
            ],
          ),
        ),
      ),
    );
  }

  sendOTPRequest() {

  }

  verifyOTP() {

  }
}
