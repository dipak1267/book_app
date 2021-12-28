import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/controller/auth/auth_controller.dart';
import 'package:project_beta/src/common_widgets/snackbars.dart';
import 'package:project_beta/src/models/login_as_model.dart';

class SignupAsGetXController extends GetxController {
  var selectedIndex = 0.obs;
  List<LoginAsModel> loginAsList = [
    LoginAsModel(title: 'Students', avatar: AppAssets.student),
    LoginAsModel(title: 'Parents', avatar: AppAssets.parent),
    LoginAsModel(title: 'Mentor', avatar: AppAssets.mentor),
    LoginAsModel(title: 'Tutor', avatar: AppAssets.tutor),
    LoginAsModel(title: 'Counselor', avatar: AppAssets.counselor),
    LoginAsModel(title: 'Dietitian', avatar: AppAssets.dietitian),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  setIndex(int index, context) {
    selectedIndex.value = index;
    Get.find<AuthController>().setRoleId(index + 1);

    update();
  }
}
