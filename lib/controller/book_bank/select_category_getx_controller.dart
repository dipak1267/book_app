import 'package:get/get.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/models/category_model.dart';

class SelectCategoryGetXController extends GetxController {
  List<CategoryModel> selectCategory = [
    CategoryModel(
      title: LanguageConstants.textBook,
      asset: AppAssets.text,
    ),
    CategoryModel(
      title: LanguageConstants.examPreparation,
      asset: AppAssets.exam,
    ),
    CategoryModel(
      title: LanguageConstants.actionAdventure,
      asset: AppAssets.action,
    ),
    CategoryModel(
      title: LanguageConstants.artsFilm,
      asset: AppAssets.art,
    ),
    CategoryModel(
      title: LanguageConstants.businessEconomics,
      asset: AppAssets.business,
    ),
    CategoryModel(
      title: LanguageConstants.comicsMangas,
      asset: AppAssets.comics,
    ),
    CategoryModel(
      title: LanguageConstants.personalityDevelopment,
      asset: AppAssets.personality,
    ),
    CategoryModel(
      title: LanguageConstants.sports,
      asset: AppAssets.sport,
    ),
    CategoryModel(
      title: LanguageConstants.travelTourism,
      asset: AppAssets.travel,
    ),
    CategoryModel(
      title: LanguageConstants.craftsHobbies,
      asset: AppAssets.crafts,
    ),
    CategoryModel(
      title: LanguageConstants.crimeThriller,
      asset: AppAssets.crime,
    ),
    CategoryModel(
      title: LanguageConstants.scienceFiction,
      asset: AppAssets.sciences,
    ),
    CategoryModel(
      title: LanguageConstants.healthFitness,
      asset: AppAssets.health,
    ),
    CategoryModel(
      title: LanguageConstants.parentingFamily,
      asset: AppAssets.parenting,
    ),
    CategoryModel(
      title: LanguageConstants.dictionary,
      asset: AppAssets.dictionary,
    ),
    CategoryModel(
      title: LanguageConstants.languageLinguistics,
      asset: AppAssets.language,
    ),
    CategoryModel(
      title: LanguageConstants.religion,
      asset: AppAssets.religion,
    ),
    CategoryModel(
      title: LanguageConstants.scienceTechnology,
      asset: AppAssets.sciences,
    ),
    CategoryModel(
      title: LanguageConstants.societySocial,
      asset: AppAssets.society,
    ),
    CategoryModel(
      title: LanguageConstants.philosophy,
      asset: AppAssets.philosophy,
    ),
  ];

  @override
  void onInit() {
    super.onInit();
  }
}
