import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/login_and_registration/login/widgets/email_login_tab.dart';
import 'package:project_beta/components/login_and_registration/login/widgets/mobile_login_tab.dart';
import 'package:project_beta/services/auth/auth.dart';
import 'package:project_beta/src/common_widgets/snackbars.dart';

class LoginGetXController extends GetxController
    with SingleGetTickerProviderMixin {
  List<Widget> screens = [
    EmailScreen(),
    MobileScreen(),
  ].obs;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();
  final TextEditingController otpController5 = TextEditingController();
  final TextEditingController otpController6 = TextEditingController();

  var checkValue = false.obs;
  late int index;

  late TabController tabController;

  late int length;
  late int webTabLength;

  @override
  void onInit() {
    length = screens.length;
    tabController = TabController(length: length, vsync: this);

    screens.map((element) {
      index = screens.indexOf(element);
    }).toList();

    update();
    super.onInit();
  }

  onCheckBoxClicked(bool value) {
    checkValue.value = value;
    print(value);
    update();
  }

  onLogin(context) async {
    await AuthService().loginWithEmailAndPassword(
      context,
      emailController.value.text,
      passwordController.value.text,
    );
  }

  onOtp(context) async {
    String otp = otpController1.value.text +
        otpController2.value.text +
        otpController3.value.text +
        otpController4.value.text +
        otpController5.value.text +
        otpController6.value.text;

    await AuthService().verifyOtp(
      context,
      otp,
    );
  }

  animate(int index) {
    tabController.animateTo(
      index,
      duration: Duration(
        seconds: 1,
      ),
      curve: Curves.bounceInOut,
    );
  }
}
