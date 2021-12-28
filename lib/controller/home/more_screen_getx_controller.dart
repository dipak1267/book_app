import 'package:get/get.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/models/category_model.dart';

class MoreScreenGetXController extends GetxController {
  List<CategoryModel> moreCategory = [
    CategoryModel(
      title: LanguageConstants.healthWellness,
      asset: AppAssets.healthCare,
      screenName: AppRoutes.healthWellness,
    ),
    CategoryModel(
      title: LanguageConstants.personalProgress,
      asset: AppAssets.personalProgress,
      screenName: AppRoutes.learningSelectCategory,
    ),
    CategoryModel(
      title: LanguageConstants.counselingSpace,
      asset: AppAssets.counseling,
      screenName: AppRoutes.learningSelectCategory,
    ),
    CategoryModel(
      title: LanguageConstants.timeManagement,
      asset: AppAssets.timer,
      screenName: AppRoutes.learningSelectCategory,
    ),
    CategoryModel(
      title: LanguageConstants.tutorZone,
      asset: AppAssets.tutorZone,
      screenName: AppRoutes.learningSelectCategory,
    ),
    CategoryModel(
      title: LanguageConstants.mentorZone,
      asset: AppAssets.mentorZone,
      screenName: AppRoutes.learningSelectCategory,
    ),
    CategoryModel(
      title: LanguageConstants.learningZone,
      asset: AppAssets.learningZone,
      screenName: AppRoutes.learningZone,
    ),
  ];

  @override
  void onInit() {
    super.onInit();
  }
}