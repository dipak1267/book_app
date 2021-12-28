import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/services/auth/auth.dart';

class MobileLoginGetXController extends GetxController {
  late TextEditingController phoneController = TextEditingController();

  late String dialCode;

  @override
  onInit() {
    dialCode = '+91';
    super.onInit();
  }

  setDialCode(String code) {
    dialCode = code;
    update();
  }

  onSubmit(context) async {
    String? phone = phoneController.value.text;
    bool status = await AuthService().sendOTP(context, dialCode + phone);

    if (status) {
      Beamer.of(context).beamToNamed(AppRoutes.verification);
    }
  }

  onPhoneLogin(context) async {
    String? phone = dialCode + phoneController.value.text;
    bool status = await AuthService().phoneLogin(context, phone);
    if (status) {
      Beamer.of(context).beamToNamed(AppRoutes.verification);
    }
  }
}
