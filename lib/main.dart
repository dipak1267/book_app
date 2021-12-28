

import 'package:beamer/beamer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/controller/auth/auth_controller.dart';
import 'package:project_beta/db/student_forum/draft.dart';
import 'package:project_beta/network/api_service.dart';
import 'package:project_beta/route/router_delegate.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';
import 'package:project_beta/utils/shared_preference_local_storage.dart';

FToast? fToast;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  init();
  runApp(MyApp());
}

class GlobalVariable {
  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        ScreenUtils.init(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
        );
        return GetMaterialApp.router(
          title: 'Project Beta',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.init(context),
          color: AppColor.backgroundColor,
          routeInformationParser: BeamerParser(),
          key: GlobalVariable.navState,
          routerDelegate: beamerRouterDelegate,
        );
      },
    );
  }

  final beamerRouterDelegate = BeamerDelegate(
    guards: [
      BeamGuard(
        pathPatterns: [
          // AppRoutes.studentProfile,
          // AppRoutes.mobileOtp,
          AppRoutes.verification,
          AppRoutes.landing,
          AppRoutes.login,
          AppRoutes.signUpAs,
          AppRoutes.createAccount,
          AppRoutes.forgotPassword
        ],
        guardNonMatching: true,
        check: (context, location) {
          return FirebaseAuth.instance.currentUser != null;
        },
        beamToNamed: (origin, target) {
          return AppRoutes.signUpAs;
        },
      )
    ],
    initialPath: AppRoutes.signUpAs,
    locationBuilder: simpleLocationBuilder,
  );
}

void init() async {
  fToast = FToast();
  Get.put(AuthController());
  await DraftDatabase.init();
  await SharedPreferenceLocalStorage.init();
  bool status = await ApiService.getAuthToken();
  if (status == false) {
    SystemNavigator.pop();
    return;
  }
}
