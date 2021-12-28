import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/learning_zone/free_resource/audio.dart';
import 'package:project_beta/components/learning_zone/free_resource/pdf.dart';
import 'package:project_beta/components/learning_zone/free_resource/text.dart';
import 'package:project_beta/components/learning_zone/web/widget/upcoming_training_web.dart';
import 'package:project_beta/components/learning_zone/widgets/course_card.dart';
import 'package:project_beta/components/learning_zone/widgets/upcoming_training_mobile.dart';
import 'package:project_beta/constants/dummy_constant.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/learning_zone_course_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class TrainingGetXController extends GetxController
    with SingleGetTickerProviderMixin {
  List<Widget> screens =
      [UpComingTrainingMobile(), UpComingTrainingMobile()].obs;

  List<Widget> webScreens = [UpcomingTrainingWeb(), UpcomingTrainingWeb()].obs;

  int _upcomingTrainingSelectedCategory = -1.obs;

  late int index;
  late int webIndex;

  late TabController tabController;

  late int length;
  late int webLength;

  getPages(selectedCategoryIndex) {
    if (selectedCategoryIndex == 0) {
      return Audio();
    } else if (selectedCategoryIndex == 1) {
      return Container(
        decoration: BoxDecoration(color: AppColor.lightYellow),
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: courseList.length,
          itemBuilder: (context, index) {
            return CourseCard(
            ).setMarginOnly(
              bottom: 4.h,
            );
          },
        ).setMarginSymmetric(
          vertical: 4.h,
        ),
      );
    } else if (selectedCategoryIndex == 2) {
      return PDF();
    } else if (selectedCategoryIndex == 3) {
      return TextWidget();
    } else {
      return Container(
        height: 50,
        color: Colors.yellowAccent,
      );
    }
  }

  @override
  void onInit() {
    length = screens.length;

    webLength = webScreens.length;
    tabController = TabController(length: length, vsync: this);

    screens.map((element) {
      index = screens.indexOf(element);
    }).toList();

    webScreens.map((element) {
      webIndex = webScreens.indexOf(element);
    }).toList();
    update();
    super.onInit();
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

  int get upcomingTrainingSelectedCategory => _upcomingTrainingSelectedCategory;

  set upcomingTrainingSelectedCategory(int value) {
    _upcomingTrainingSelectedCategory = value;
    update();
  }
}
