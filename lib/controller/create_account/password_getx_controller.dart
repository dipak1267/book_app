import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PasswordGetXController extends GetxController {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  late String newPassword;
  late String confirmPassword;

  @override
  void onInit() {
    newPassword = '';
    confirmPassword = '';
    super.onInit();
  }
}
