import 'package:get/get.dart';
import 'package:project_beta/components/learning_zone/free_resource/audio.dart';
import 'package:project_beta/components/learning_zone/free_resource/pdf.dart';
import 'package:project_beta/components/learning_zone/free_resource/text.dart';
import 'package:project_beta/components/learning_zone/free_resource/video.dart';
import 'package:project_beta/constants/dummy_constant.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/models/learning_zone_course_model.dart';

class FreeResourceGetXController extends GetxController {
  int _selectedCategory = -1.obs;

  @override
  void onInit() {
    update();
    super.onInit();
  }

  getPages(selectedCategoryIndex) {
    if (selectedCategoryIndex == 0) {
      return Audio();
    } else if (selectedCategoryIndex == 1) {
      return Video();
    } else if (selectedCategoryIndex == 2) {
      return PDF();
    } else if (selectedCategoryIndex == 3) {
      return TextWidget();
    } else {
      return Audio();
    }
  }

  var _courseList = [
    LearningZoneCourseModel(
        title: "Flutter Course 1",
        category: LanguageConstants.business,
        dateAndTime: "",
        information: LanguageConstants.loremIpsum,
        presenter: "Flutter Developer",
        thumbnail: DummyConstants.flutterCourseThumbnail,
        trainingMode: LanguageConstants.online,
        type: LanguageConstants.free),
    LearningZoneCourseModel(
        title: "Flutter Course 2",
        category: LanguageConstants.technology,
        dateAndTime: "",
        information: LanguageConstants.loremIpsum,
        presenter: "Flutter Developer",
        thumbnail: DummyConstants.flutterCourseThumbnail,
        trainingMode: LanguageConstants.online,
        type: LanguageConstants.free),
    LearningZoneCourseModel(
        title: "Flutter Course 3",
        category: LanguageConstants.technology,
        dateAndTime: "",
        information: LanguageConstants.loremIpsum,
        presenter: "Flutter Developer",
        thumbnail: DummyConstants.flutterCourseThumbnail,
        trainingMode: LanguageConstants.online,
        type: LanguageConstants.free),
    LearningZoneCourseModel(
        title: "Flutter Course 4",
        category: LanguageConstants.politics,
        dateAndTime: "",
        information: LanguageConstants.loremIpsum,
        presenter: "Flutter Developer",
        thumbnail: DummyConstants.flutterCourseThumbnail,
        trainingMode: LanguageConstants.online,
        type: LanguageConstants.free),
    LearningZoneCourseModel(
        title: "Flutter Course 5",
        category: LanguageConstants.stockMarket,
        dateAndTime: "",
        information: LanguageConstants.loremIpsum,
        presenter: "Flutter Developer",
        thumbnail: DummyConstants.flutterCourseThumbnail,
        trainingMode: LanguageConstants.online,
        type: LanguageConstants.free),
    LearningZoneCourseModel(
        title: "Flutter Course 6",
        category: LanguageConstants.innovation,
        dateAndTime: "",
        information: LanguageConstants.loremIpsum,
        presenter: "Flutter Developer",
        thumbnail: DummyConstants.flutterCourseThumbnail,
        trainingMode: LanguageConstants.online,
        type: LanguageConstants.free),
    LearningZoneCourseModel(
        title: "Flutter Course 7",
        category: LanguageConstants.innovation,
        dateAndTime: "",
        information: LanguageConstants.loremIpsum,
        presenter: "Flutter Developer",
        thumbnail: DummyConstants.flutterCourseThumbnail,
        trainingMode: LanguageConstants.online,
        type: LanguageConstants.free),
  ].obs;

  get courseList => _courseList;

  set courseList(value) {
    _courseList = value;
  }

  int get selectedCategory => _selectedCategory;

  set selectedCategory(int value) {
    _selectedCategory = value;
    update();
  }
}
