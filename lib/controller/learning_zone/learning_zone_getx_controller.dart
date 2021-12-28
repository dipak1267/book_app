import 'package:get/get.dart';
import 'package:project_beta/constants/dummy_constant.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/models/learning_zone_course_model.dart';

enum LearningZoneCurrentTab { UpcomingTraining, FreeResources }

class LearningZoneGetXController extends GetxController {
  var _currentTab = LearningZoneCurrentTab.UpcomingTraining;
  var _currentSelectedCategory = "All";
  var _categoryList = [
    LanguageConstants.all,
    LanguageConstants.business,
    LanguageConstants.technology,
    LanguageConstants.politics,
    LanguageConstants.stockMarket,
    LanguageConstants.innovation,
  ].obs;

  var _selectedCourse = -1;

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

  set currentTab(LearningZoneCurrentTab value) {
    _currentTab = value;
    update();
  }

  LearningZoneCurrentTab get currentTab => _currentTab;

  get categoryList => _categoryList;

  set categoryList(value) {
    _categoryList = value;
  }

  get currentSelectedCategory => _currentSelectedCategory;

  set currentSelectedCategory(value) {
    _currentSelectedCategory = value;
    update();
  }

  get courseList => _courseList;

  set courseList(value) {
    _courseList = value;
  }

  get selectedCourse => _selectedCourse;

  set selectedCourse(value) {
    _selectedCourse = value;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
