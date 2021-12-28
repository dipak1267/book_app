import 'package:flutter/material.dart';
import 'package:project_beta/components/add_certification/add_certification.dart';
import 'package:project_beta/components/book_bank/add_book_screen.dart';
import 'package:project_beta/components/book_bank/book_bank.dart';
import 'package:project_beta/components/book_bank/book_bank_filter_screen.dart';
import 'package:project_beta/components/book_bank/select_category_screen.dart';
import 'package:project_beta/components/book_details/book_details_screen.dart';
import 'package:project_beta/components/landing/home_page.dart';
import 'package:project_beta/components/learning_zone/widgets/select_category.dart';
import 'package:project_beta/components/learning_zone_detail/learning_zone_detail.dart';
import 'package:project_beta/components/login_and_registration/create_account/create_account_screen.dart';
import 'package:project_beta/components/login_and_registration/create_new_password/create_new_password.dart';
import 'package:project_beta/components/login_and_registration/forgot_password/forgor_password_screen.dart';
import 'package:project_beta/components/login_and_registration/login/login_screen.dart';
import 'package:project_beta/components/login_and_registration/sign_up_as/sign_up_as.dart';
import 'package:project_beta/components/more_screen/more_screen.dart';
import 'package:project_beta/components/profile/profile_screen.dart';

import 'app_routes.dart';
import 'routing_animation_transitions.dart';

final GlobalKey<NavigatorState> rootNavKey = GlobalKey<NavigatorState>();

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final dynamic args = settings.arguments;
    switch (settings.name) {

      /// ********* HOME SCREEN ********* ///
      case AppRoutes.home:
        return BouncyPageRoute(child: HomePage());

      /// ********* LOGIN, REGISTRATION & SIGN UP AS SCREENS ********* ///

      case AppRoutes.signUpAs:
        return BouncyPageRoute(child: SignUpAsScreen());

      case AppRoutes.login:
        return BouncyPageRoute(child: LoginScreen());

      case AppRoutes.createAccount:
        return BouncyPageRoute(child: CreateAccountScreen());

      /// ********* CHANGE, FORGOT PASSWORD AND OTP ********* ///
      case AppRoutes.forgotPassword:
        return BouncyPageRoute(child: ForgotPasswordScreen());

      case AppRoutes.createNewPassword:
        return BouncyPageRoute(child: CreateNewPassword());

      /// ********* HOME SCREEN ********* ///

      case AppRoutes.studentProfile:
        return BouncyPageRoute(child: ProfileScreen());

      /// ********* BOOK BANK SCREEN ********* ///

      case AppRoutes.bookBank:
        return BouncyPageRoute(child: BookBankScreen());

      case AppRoutes.selectCategory:
        return BouncyPageRoute(child: SelectCategoryScreen());

      case AppRoutes.bookBankFilter:
        return BouncyPageRoute(child: BookBankFilterScreen());

      case AppRoutes.addBook:
        return BouncyPageRoute(child: AddBookScreen());

      case AppRoutes.bookDetails:
        return BouncyPageRoute(child: BookDetailsScreen());

      /// ********* MORE SCREEN ********* ///
      case AppRoutes.more:
        return BouncyPageRoute(child: MoreScreen());

      case AppRoutes.dietitianCertificate:
        return BouncyPageRoute(child: AddCertification());

      case AppRoutes.learningZoneDetail:
        return BouncyPageRoute(child: LearningZoneDetailScreen());

      case AppRoutes.learningSelectCategory:
        return BouncyPageRoute(child: LearningSelectCategoryScreen());

      default:
        return _errorRoute(args);
    }
  }

  static MaterialPageRoute _errorRoute(dynamic args) {
    return MaterialPageRoute(
      builder: (_) => Container(),
    );
  }
}
