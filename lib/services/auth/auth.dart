import 'dart:convert';
import 'package:beamer/beamer.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/auth/auth_controller.dart';
import 'package:project_beta/network/api_service.dart';
import 'package:project_beta/services/auth/google.dart';
import 'package:project_beta/src/common_widgets/snackbars.dart';
import 'package:project_beta/src/models/users_model.dart';
import 'package:project_beta/utils/shared_preference_local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

var auth;

class AuthService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  UsersModel usersInfo = UsersModel();

//Login with email and password
  loginWithEmailAndPassword(context, email, password) async {
    try {
      firebase.UserCredential authUser =
          await firebase.FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      firebase.User user = authUser.user!;
      UsersModel? users = await getUserDetails(user.uid);
      SharedPreferenceLocalStorage.userId(users!.id);
      if (users != null) {
        final SharedPreferences prefs = await _prefs;
        prefs.setString(user.uid, jsonEncode(users));
        Get.find<AuthController>().setCurrentUser(users);

        navigate(context, users, Get.find<AuthController>().roleId);
      } else {
        Snackbars.showTextSnackBar(
          text: LanguageConstants.somethingWentWrongPleaseTryAgain,
          context: context,
          type: "error",
        );
        firebase.FirebaseAuth.instance.signOut();
        Beamer.of(context).beamToNamed(AppRoutes.login);
      }
    } on firebase.FirebaseAuthException catch (e) {
      Snackbars.showTextSnackBar(
        text: e.message,
        context: context,
        type: "error",
      );
    } catch (e) {
      print(e);
    }
  }

//Login with Google
  loginWithGoogle(context, credential) async {
    try {
      final firebase.UserCredential userCredential =
          await firebase.FirebaseAuth.instance.signInWithCredential(credential);

      final user = userCredential.user;

      if (user != null) {
        UsersModel? usersInfo = await getUserDetails(user.uid);
        if (usersInfo != null) {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString(user.uid, jsonEncode(usersInfo));
          Get.find<AuthController>().setCurrentUser(usersInfo);
          if (!usersInfo.isPhoneVerified!) {
            await sendOTP(context, usersInfo.phoneNumber);
          }
          navigate(context, usersInfo, Get.find<AuthController>().roleId);
        } else {
          await _createUser(
            email: user.email!,
            password: null,
            firstName: user.displayName,
            lastName: null,
            gender: null,
            countryCode: 0,
            phone: 0,
            firebaseId: user.uid,
          );
        }
        return;
      }
    } on firebase.FirebaseAuthException catch (e) {
      Snackbars.showTextSnackBar(
        text: e.message,
        context: context,
        type: "error",
      );
    } catch (e) {
      Snackbars.showTextSnackBar(
        text: "Error occurred using Google Sign In. Try again.",
        context: context,
        type: "error",
      );
    }
  }

  logout(context) async {
    try {
      if (!kIsWeb) {
        GoogleAuthentication.singOut(context: context);
      } else {
        await firebase.FirebaseAuth.instance.signOut();
      }
    } catch (e) {
      Snackbars.showTextSnackBar(
        text: "Error signing out. Try again.",
        context: context,
        type: "error",
      );
    }
  }

  verifyOtp(context, otp) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final sentOtp = prefs.getString("otp");
    final phone = prefs.containsKey("phone");
    try {
      if (phone) {
        await AuthService().phoneLoginVerify(context, phone, otp);
        prefs.remove("phone");
        return true;
      } else {
        if (otp == sentOtp) {
          UsersModel user = Get.find<AuthController>().currentUser;
          var response = await ApiService.verifyPhone(userId: user.id, param: {
            "is_verified": true,
          });
          if (response.data != null) {
            if (response.data['user_id'] != null) {
              Snackbars.showTextSnackBar(
                text: "Phone number verified.",
                context: context,
                type: "success",
              );
              Beamer.of(context).beamToNamed(AppRoutes.studentProfile);
              return true;
            }
          }
          Snackbars.showTextSnackBar(
            text: "Phone number not verified.",
            context: context,
            type: "error",
          );
          return false;
        } else {
          Snackbars.showTextSnackBar(
            text: "Phone number not verified.",
            context: context,
            type: "error",
          );
          return false;
        }
      }
    } catch (e) {
      Snackbars.showTextSnackBar(
        text: e.toString(),
        context: context,
        type: "error",
      );
    }
  }

//Register with email and password
  registerWithEmailAndPassword({
    context,
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String gender,
    required int countryCode,
    required int phone,
  }) async {
    try {
      firebase.UserCredential authUser =
          await firebase.FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _createUser(
        email: email,
        password: password,
        firebaseId: authUser.user!.uid,
        firstName: firstName,
        lastName: lastName,
        gender: gender,
        countryCode: countryCode,
        phone: phone,
      );
    } on firebase.FirebaseAuthException catch (e) {
      print(e.toString());
      String msg = e.message!;

      if (msg.isEmpty) {
        msg =
            "there is some issue with your email and password , please check and try again";
      }
      return [false, msg];
    }
  }

  _createUser({
    context,
    email,
    password,
    firstName,
    lastName,
    gender,
    countryCode,
    phone,
    firebaseId,
  }) async {
    bool isVerify = false;
    int roleId = Get.find<AuthController>().roleId.value;
    var data = {
      "email": email,
      "password": password,
      "first_name": firstName,
      "last_name": lastName,
      "gender": gender,
      "mobile_number": phone,
      "country_code": countryCode,
      "firebase_id": firebaseId,
      "role_id": roleId,
    };

    var response = await ApiService.registerUser(data: data);

    if (response != null || response.data["user_id"] != null) {
      if (isVerify == false) {
        bool status = await sendOTP(context, countryCode + phone);
        if (status) {
          Beamer.of(context).beamToNamed(AppRoutes.verification);
        }
      } else {
        Beamer.of(context).beamToNamed(AppRoutes.studentProfile);
      }
    } else {
      Snackbars.showTextSnackBar(
        text: LanguageConstants.registrationFailed,
        context: context,
        type: "error",
      );
      logout(context);
    }
  }

  void _roleNotFound(context) {
    Future.microtask(() {
      Snackbars.showTextSnackBar(
        text: "Your profile do not match our records.",
        context: context,
        type: "error",
      );
      AuthService().logout(context);
      Get.find<AuthController>().setCurrentUser(UsersModel());
      Beamer.of(context).beamToNamed(AppRoutes.signUpAs);
    });
    return;
  }

  navigate(context, UsersModel currentUser, roleId) {
    if (currentUser.roles == null) {
      _roleNotFound(context);
      return;
    }
    if (!currentUser.roles!.contains(roleId.value)) {
      _roleNotFound(context);
      return;
    }

    Future.microtask(() {
      if (currentUser.phoneNumber == null || currentUser.phoneNumber == 0) {
        Beamer.of(context).beamToNamed(AppRoutes.mobileOtp);
      }
      if (!currentUser.isPhoneVerified!) {
        Beamer.of(context).beamToNamed(AppRoutes.verification);
      } else if (roleId.value == 0) {
        Beamer.of(context).beamToNamed(AppRoutes.signUpAs);
      } else if (roleId.value == 1) {
        Beamer.of(context).beamToNamed(AppRoutes.home);
      } else if (roleId.value == 2) {
        Beamer.of(context).beamToNamed(AppRoutes.login);
      } else if (roleId.value == 3) {
        Beamer.of(context).beamToNamed(AppRoutes.studentForum);
      } else if (roleId.value == 4) {
        Beamer.of(context).beamToNamed(AppRoutes.createNewPassword);
      } else if (roleId.value == 5) {
        Beamer.of(context).beamToNamed(AppRoutes.dietitianPersonalDetails);
      } else if (roleId.value == 6) {
        Beamer.of(context).beamToNamed(AppRoutes.dietitianPersonalDetails);
      }
      return;
    });
  }

  getUserDetails(firebaseId) async {
    try {
      final response = await ApiService.getUserDetails(firebaseId: firebaseId);
      print(response.data.toString());
      if (response != null) {
        usersInfo = UsersModel.fromJson(response.data);
        return usersInfo;
      }
      return null;
    } catch (e) {
      print(e);
    }
  }

  sendOTP(context, phone) async {
    try {
      final response = await ApiService.sendOTP(phone: phone);
      // print(response.data['body']);
      if (response != null) {
        if (response.data['body'] != null) {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString("otp", response.data['body']);

          UsersModel user = Get.find<AuthController>().currentUser;
          // var mobile = phone.toString().substring(1, 3) as int;
          // var countryCode = phone.toString().substring(0, 3) as int;

          // UsersModel usersInfo = UsersModel(
          //   phoneNumber: mobile,
          //   countryCode: countryCode,
          // );
          // Get.find<AuthController>().setCurrentUser(usersInfo);
          if (user.phoneNumber == null || user.phoneNumber == 0) {
            await ApiService.updatePhone(userId: user.id, param: {
              "country_code": phone.toString().substring(0, 3),
              "mobile_number": phone.toString().substring(3),
            });
          }

          return true;
        } else {
          var err = jsonDecode(response.data['error']);
          Snackbars.showTextSnackBar(
            text: err['message'],
            context: context,
            type: "error",
          );
          return false;
        }
      }
      print(response.data);
      return false;
    } catch (e) {
      printError(info: e.toString());
      Snackbars.showTextSnackBar(
        text: e.toString(),
        context: context,
        type: "error",
      );
      print(e);
      return false;
    }
  }

  phoneLoginVerify(context, phone, smsCode) async {
    firebase.FirebaseAuth auth = firebase.FirebaseAuth.instance;
    firebase.ConfirmationResult? confirmationResult =
        Get.find<AuthController>().confirmationResult;
    try {
      if (kIsWeb) {
        if (confirmationResult != null) {
          firebase.UserCredential userCredential =
              await Get.find<AuthController>()
                  .confirmationResult!
                  .confirm(smsCode);

          Beamer.of(context).beamToNamed(AppRoutes.studentProfile);
        } else {
          Snackbars.showTextSnackBar(
            text: 'Please input sms code received after verifying phone number',
            context: context,
            type: "error",
          );
        }

        // await auth.signInWithCredential(userCredential);
      } else {
        await auth.verifyPhoneNumber(
          phoneNumber: phone,
          verificationCompleted:
              (firebase.PhoneAuthCredential credential) async {},
          verificationFailed: (firebase.FirebaseAuthException e) {
            print(e);
          },
          codeSent: (String verificationId, int? resendToken) async {
            // Create a PhoneAuthCredential with the code
            firebase.PhoneAuthCredential credential =
                firebase.PhoneAuthProvider.credential(
              verificationId: verificationId,
              smsCode: smsCode,
            );

            // Sign the user in (or link) with the credential
            await auth.signInWithCredential(credential);
          },
          codeAutoRetrievalTimeout: (String verificationId) {},
        );
      }
    } catch (e) {
      Snackbars.showTextSnackBar(
          text: "Failed to sign in: ${e.toString()}",
          context: context,
          type: "error");
    }
  }

  phoneLogin(context, phone) async {
    firebase.FirebaseAuth auth = firebase.FirebaseAuth.instance;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("phone", phone);
    try {
      if (kIsWeb) {
        // Wait for the user to complete the reCAPTCHA & for an SMS code to be sent.

        Get.find<AuthController>().confirmationResult =
            await auth.signInWithPhoneNumber(phone);
      } else {
        await auth.verifyPhoneNumber(
          phoneNumber: phone,
          verificationCompleted: (firebase.PhoneAuthCredential credential) {},
          verificationFailed: (firebase.FirebaseAuthException e) {
            print(e);
          },
          codeSent: (String verificationId, int? resendToken) {},
          codeAutoRetrievalTimeout: (String verificationId) {},
        );
      }
      return true;
    } catch (e) {
      Snackbars.showTextSnackBar(
        text: "Failed to sign in: ${e.toString()}",
        context: context,
        type: "error",
      );
      return false;
    }
  }
}
