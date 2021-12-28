import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

import 'package:get/get.dart';
import 'package:project_beta/src/models/users_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

var auth;

class AuthController extends GetxController {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  firebase.ConfirmationResult? confirmationResult;

  @override
  void onInit() {
    _prefs.then((SharedPreferences prefs) {
      if (FirebaseAuth.instance.currentUser != null) {
        String uid = FirebaseAuth.instance.currentUser!.uid;
        String? userJson = prefs.getString(uid);
        currentUser = UsersModel.fromJson(jsonDecode(userJson!));
      }
    });

    super.onInit();
  }

  var currentUser = UsersModel();

  RxInt roleId = 1.obs;

  setCurrentUser(UsersModel user) {
    currentUser = user;
    update();
  }

  setRoleId(int id) {
    roleId.value = id;
  }
}
