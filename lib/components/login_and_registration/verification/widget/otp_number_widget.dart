import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project_beta/controller/login/login_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class OtpNumberWidget extends StatelessWidget {
  final double? width;
  final LoginGetXController? controller;

  OtpNumberWidget({Key? key, this.width, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OTPWidget(otpController: controller!.otpController1),
        ),
        SizedBox(width: width),
        Expanded(
          child: OTPWidget(otpController: controller!.otpController2),
        ),
        SizedBox(width: width),
        Expanded(
          child: OTPWidget(otpController: controller!.otpController3),
        ),
        SizedBox(width: width),
        Expanded(
          child: OTPWidget(otpController: controller!.otpController4),
        ),
        SizedBox(width: width),
        Expanded(
          child: OTPWidget(otpController: controller!.otpController5),
        ),
        SizedBox(width: width),
        Expanded(
          child: OTPWidget(otpController: controller!.otpController6),
        ),
      ],
    ).setMarginSymmetric(
      horizontal: 32.w,
    );
  }
}

class OTPWidget extends StatelessWidget {
  final otpController;

  const OTPWidget({Key? key, this.otpController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.primaryColor,
      ),
      child: SizedBox(
        width: 10,
        height: 10,
        child: TextFormField(
          textAlign: TextAlign.center,
          controller: otpController,
          maxLength: 1,
          decoration: InputDecoration(
            border: InputBorder.none,
            counterText: "",
          ),
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          keyboardType: TextInputType.number,
          cursorColor: AppColor.backgroundColor,
          style: TextStyle(color: AppColor.backgroundColor),
          autofocus: false,
        ),
      ),
    );
  }
}
