import 'package:get/get.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/models/category_model.dart';

class HomeCategoryGetXController extends GetxController {
  List<CategoryModel> homeCategory = [
    CategoryModel(
      title: LanguageConstants.bookBank,
      asset: AppAssets.books,
      screenName: AppRoutes.bookBank,
    ),
    CategoryModel(
      title: LanguageConstants.studentForum,
      screenName: AppRoutes.studentForum,
      asset: AppAssets.studentHome,
    ),
    CategoryModel(
      title: LanguageConstants.healthWellness,
      screenName: AppRoutes.healthWellness,
      asset: AppAssets.health,
    ),
    CategoryModel(
      title: LanguageConstants.personalProgress,
      screenName: AppRoutes.studentProfile,
      asset: AppAssets.personalProgress,
    ),
    CategoryModel(
      title: LanguageConstants.learningZone,
      screenName: AppRoutes.learningZone,
      asset: AppAssets.learningZone,
    ),
    CategoryModel(
      title: LanguageConstants.careerOptions,
      asset: AppAssets.career,
    ),
    CategoryModel(
      title: LanguageConstants.trendingCareers,
      asset: AppAssets.goal,
    ),
    CategoryModel(
      title: LanguageConstants.collegesCatalogue,
      asset: AppAssets.catalogue,
    ),
    CategoryModel(
      title: LanguageConstants.healthWellness,
      asset: AppAssets.healthCare,
    ),
    CategoryModel(
      title: LanguageConstants.personalProgress,
      asset: AppAssets.personalProgress,
    ),
    CategoryModel(
      title: LanguageConstants.counselingSpace,
      asset: AppAssets.counseling,
    ),
    CategoryModel(
      title: LanguageConstants.timeManagement,
      asset: AppAssets.timer,
    ),
    CategoryModel(
      title: LanguageConstants.tutorZone,
      asset: AppAssets.tutorZone,
    ),
    CategoryModel(
      title: LanguageConstants.mentorZone,
      asset: AppAssets.mentorZone,
    ),
  ];

  @override
  void onInit() {
    super.onInit();
  }
}
