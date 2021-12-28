import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:project_beta/constants/app_icons.dart';
import 'package:project_beta/services/auth/auth.dart';
import 'package:project_beta/src/common_widgets/snackbars.dart';
import 'package:project_beta/src/models/gender_model.dart';
import 'package:project_beta/utils/validator.dart';

class CreateAccountGetXController extends GetxController {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordOneController = TextEditingController();
  final TextEditingController passwordTwoController = TextEditingController();

  String selectedCountryCode = "+91";

  final List<GenderModel> gender = [
    GenderModel(
      gender: 'Male',
      icon: AppIcons.male,
    ),
    GenderModel(
      gender: 'Female',
      icon: AppIcons.female,
    )
  ].obs;

  late String selectedGender;

  @override
  onInit() async {
    selectedGender = gender.first.gender!;
    super.onInit();
  }

  setDropDownValue(value) {
    selectedGender = value;
    update();
  }

  registerAccount(BuildContext context) async {
    // if (!_isValidate(context)) {
    //   return;
    // }

    await AuthService().registerWithEmailAndPassword(
      email: emailController.value.text,
      password: passwordOneController.value.text,
      firstName: firstNameController.value.text,
      lastName: lastNameController.value.text,
      gender: selectedGender,
      countryCode: 91,
      // selectedCountryCode.substring(1, 3) as int,
      phone: int.parse(mobileNumberController.value.text),
      context: context,
    );
  }

  bool _isValidate(BuildContext context) {
    var email = emailController.value.text;
    var password = passwordOneController.value.text;
    var confirmPassword = passwordTwoController.value.text;
    var firstName = firstNameController.value.text;
    var lastName = lastNameController.value.text;
    var mobileNumber = mobileNumberController.value.text;
    var isEmailValid = Validation.isEmailValid(email: email);
    print(password);
    print(confirmPassword);
    if (email.isEmpty) {
      Snackbars.showTextSnackBar(
        text: "Email is required",
        context: context,
        type: "error",
      );
      return false;
    } else if (!isEmailValid) {
      Snackbars.showTextSnackBar(
        text: "Email is not validated",
        context: context,
        type: "success",
      );
      return false;
    } else if (password.isEmpty) {
      Snackbars.showTextSnackBar(
        text: "Password is required",
        context: context,
        type: "success",
      );
      return false;
    } else if (confirmPassword.isEmpty) {
      Snackbars.showTextSnackBar(
        text: "Confirm password is required",
        context: context,
        type: "success",
      );
      return false;
    } else if (password.trim() != confirmPassword.trim()) {
      Snackbars.showTextSnackBar(
        text: "password does not match , please check them and try again",
        context: context,
        type: "success",
      );
      return false;
    } else if (confirmPassword.isEmpty) {
      Snackbars.showTextSnackBar(
        text: "confirm password is required",
        context: context,
        type: "success",
      );
      return false;
    } else if (firstName.isEmpty) {
      Snackbars.showTextSnackBar(
        text: "First name is required",
        context: context,
        type: "success",
      );
      return false;
    } else if (lastName.isEmpty) {
      Snackbars.showTextSnackBar(
        text: "Last name is required",
        context: context,
        type: "success",
      );
      return false;
    } else if (mobileNumber.isEmpty) {
      Snackbars.showTextSnackBar(
        text: "Mobile number is required",
        context: context,
        type: "success",
      );
      return false;
    } else if (selectedCountryCode.isEmpty) {
      Snackbars.showTextSnackBar(
        text: "Please select country",
        context: context,
        type: "success",
      );
      return false;
    } else if (selectedGender.isEmpty) {
      Snackbars.showTextSnackBar(
        text: "Please select gender",
        context: context,
        type: "success",
      );
      return false;
    } else if (selectedCountryCode.isEmpty) {
      Snackbars.showTextSnackBar(
        text: "Please select country",
        context: context,
        type: "success",
      );
      return false;
    } else if (selectedCountryCode.isEmpty) {
      Snackbars.showTextSnackBar(
        text: "Confirm password is required",
        context: context,
        type: "success",
      );
      return false;
    } else if (password.trim() == confirmPassword.trim()) {
      Snackbars.showTextSnackBar(
        text: "Password does not match , please check them and try again",
        context: context,
        type: "success",
      );
      return false;
    }
    return true;
  }
}
