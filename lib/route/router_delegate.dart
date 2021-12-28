import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/components/add_certification/add_certification.dart';
import 'package:project_beta/components/book_bank/add_book_screen.dart';
import 'package:project_beta/components/book_bank/book_bank.dart';
import 'package:project_beta/components/book_bank/book_bank_filter_screen.dart';
import 'package:project_beta/components/book_bank/select_category_screen.dart';
import 'package:project_beta/components/book_details/book_details_screen.dart';
import 'package:project_beta/components/dietician_profile/personal_detail_screen.dart';
import 'package:project_beta/components/dietitian_appoitments/dietitian_appoitment_screen.dart';
import 'package:project_beta/components/draft/draft_screen.dart';
import 'package:project_beta/components/health_wellness/dietitian/add_health_wealth.dart';
import 'package:project_beta/components/health_wellness/dietitian/book_dietician.dart';
import 'package:project_beta/components/health_wellness/dietitian/dietician_details.dart';
import 'package:project_beta/components/health_wellness/dietitian/dietician_list.dart';
import 'package:project_beta/components/health_wellness/dietitian/dititian_profile.dart';
import 'package:project_beta/components/health_wellness/widgets/add_health_wellness_body.dart';
import 'package:project_beta/components/landing/home_page.dart';
import 'package:project_beta/components/learning_zone/learning_zone_screen.dart';
import 'package:project_beta/components/learning_zone/widgets/select_category.dart';
import 'package:project_beta/components/learning_zone_detail/learning_zone_detail.dart';
import 'package:project_beta/components/login_and_registration/create_account/create_account_screen.dart';
import 'package:project_beta/components/login_and_registration/create_new_password/create_new_password.dart';
import 'package:project_beta/components/login_and_registration/forgot_password/forgor_password_screen.dart';
import 'package:project_beta/components/login_and_registration/login/login_screen.dart';
import 'package:project_beta/components/login_and_registration/sign_up_as/sign_up_as.dart';
import 'package:project_beta/components/login_and_registration/verification/mobile_otp_screen.dart';
import 'package:project_beta/components/login_and_registration/verification/verification_screen.dart';
import 'package:project_beta/components/more_screen/more_screen.dart';
import 'package:project_beta/components/profile/profile_screen.dart';
import 'package:project_beta/components/student_forum/web/add_post_screen.dart';
import 'package:project_beta/components/student_forum/web/forum_details_screen.dart';
import 'package:project_beta/components/student_forum/web/update_post_screen.dart';
import 'package:project_beta/components/student_forum/web/user_forum_screen.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/src/models/book_list_model.dart';

String? id = "0";

final simpleLocationBuilder = RoutesLocationBuilder(
  routes: {
    '/': (context, state, data) => SignUpAsScreen(),

    AppRoutes.home: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: HomePage(),
        key: ValueKey('Home'),
        title: 'Home',
      );
    },
    AppRoutes.signUpAs: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: SignUpAsScreen(),
        key: ValueKey('Sign Up As'),
        title: 'Sign Up As',
      );
    },
    AppRoutes.login: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: LoginScreen(),
        key: ValueKey('Login'),
        title: 'Login',
      );
    },
    AppRoutes.mobileOtp: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: MobileOTP(),
        key: ValueKey('Send OTP'),
        title: 'Send OTP',
      );
    },
    AppRoutes.verification: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: VerificationScreen(),
        key: ValueKey('OTP Verification'),
        title: 'OTP Verification',
      );
    },
    AppRoutes.createAccount: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: CreateAccountScreen(),
        key: ValueKey('Create Account'),
        title: 'Create Account',
      );
    },
    AppRoutes.forgotPassword: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: ForgotPasswordScreen(),
        key: ValueKey('Forgot Password'),
        title: 'Forgot Password',
      );
    },
    AppRoutes.createNewPassword: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: CreateNewPassword(),
        key: ValueKey('Create new password'),
        title: 'Create new password',
      );
    },
    AppRoutes.studentProfile: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: ProfileScreen(),
        key: ValueKey('Profile'),
        title: 'Profile',
      );
    },
    AppRoutes.bookBank: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: BookBankScreen(),
        key: ValueKey('Book Bank'),
        title: 'Book Bank',
      );
    },
    AppRoutes.selectCategory: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: SelectCategoryScreen(),
        key: ValueKey('Select Category'),
        title: 'Select Category',
      );
    },
    AppRoutes.bookBankFilter: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: BookBankFilterScreen(),
        key: ValueKey('Book Bank Filter'),
        title: 'Book Bank Filter',
      );
    },
    AppRoutes.addBook: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: AddBookScreen(),
        key: ValueKey('Add Book'),
        title: 'Add Book',
      );
    },
    AppRoutes.addPost: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: AddPostScreen(),
        key: ValueKey('Add Post'),
        title: 'Add Post',
      );
    },
    AppRoutes.studentForumDetails: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: ForumDetailsScreen(),
        key: ValueKey('Forum Details'),
        title: 'Forum Details',
      );
    },
    AppRoutes.bookDetails: (context, state, data) {
      BookList? book = data as BookList;
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: BookDetailsScreen(book: book),
        key: ValueKey('Book Detail'),
        title: 'Book Detail',
      );
    },
    AppRoutes.more: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: MoreScreen(),
        key: ValueKey('More'),
        title: 'More',
      );
    },
    AppRoutes.learningZoneDetail: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: LearningZoneDetailScreen(),
        key: ValueKey('Detail'),
        title: 'Detail',
      );
    },
    AppRoutes.learningZone: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: LearningZoneScreen(),
        key: ValueKey('Detail'),
        title: 'Detail',
      );
    },
    AppRoutes.learningSelectCategory: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: LearningSelectCategoryScreen(),
        key: ValueKey('Select Category'),
        title: 'Select Category',
      );
    },
    AppRoutes.studentForum: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: UserForumScreen(),
        key: ValueKey('Student Forum'),
        title: 'Student Forum',
      );
    },
    AppRoutes.dietitianDetails: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.slideTransition,
        child: DietitianDetailsScreen(),
        key: ValueKey('Dietitian Details'),
        title: 'Dietitian Details',
      );
    },
    AppRoutes.dietitianList: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: DietitianListScreen(),
        key: ValueKey('Dietitian List'),
        title: 'Dietitian List',
      );
    },
    AppRoutes.bookDietitian: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: BookDietitian(),
        key: ValueKey('Book Dietitian'),
        title: 'Book Dietitian',
      );
    },
    AppRoutes.dietitianProfile: (context, state, data) {
      return BeamPage(
          popToNamed: '/',
          type: BeamPageType.fadeTransition,
          child: DietitianProfile(),
          key: ValueKey('Dietitian Profile'),
          title: 'Dietitian Profile');
    },
    AppRoutes.draftScreen: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: DraftScreen(),
        key: ValueKey('Drafts'),
        title: 'Saved Drafts',
      );
    },
    // AppRoutes.studentForumDetails + '/:id': (context, state, data) {
    //   id = state.pathParameters['id']!;
    //   return BeamPage(
    //     popToNamed: '/',
    //     type: BeamPageType.fadeTransition,
    //     child: DetailScreen(int.parse(id!)),
    //     key: ValueKey('book-$id'),
    //     title: 'A Book #$id',
    //   );
    // },
    AppRoutes.healthWellness: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: AddHealthAndWealth(),
        key: ValueKey('Health Wellness'),
        title: 'Health Wellness',
      );
    },
    AppRoutes.dietitianCertificate: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: AddCertification(),
        key: ValueKey('Dietitian Add Certificate'),
        title: 'Dietitian Add Certificate',
      );
    },
    AppRoutes.dietitianPersonalDetails: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: PersonalDetailScreen(),
        key: ValueKey('Dietitian Personal Details'),
        title: 'Dietitian Personal Details',
      );
    },
    AppRoutes.dietitianAppointment: (context, state, data) {
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: DietitianAppoitmentScreen(),
        key: ValueKey('Dietitian Appointment'),
        title: 'Dietitian Appointment',
      );
    },
    AppRoutes.updatePostScreen + '/:id': (context, state, data) {
      final id = state.pathParameters['id']!;
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: UpdatePostScreen(id: id),
        key: ValueKey('Post'),
        title: 'Post',
      );
    },
    AppRoutes.forumFilter + '/:id': (context, state, data) {
      final id = state.pathParameters['id']!;
      return BeamPage(
        popToNamed: '/',
        type: BeamPageType.fadeTransition,
        child: UserForumScreen(),
        key: ValueKey('Forum filter'),
        title: 'Forum filter',
      );
    },
  },
);
