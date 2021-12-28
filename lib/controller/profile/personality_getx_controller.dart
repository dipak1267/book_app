import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/get.dart';

class PersonalityGetXController extends GetxController {
  final List<dynamic> list = [];
  final List<dynamic> weakness = [];
  final List<dynamic> interests = [];
  final GlobalKey<TagsState> interestsTagKey = GlobalKey<TagsState>();
  final GlobalKey<TagsState> weaknessTagKey = GlobalKey<TagsState>();
  final GlobalKey<TagsState> strengthTagKey = GlobalKey<TagsState>();

  selectTag(value) {
    if (value != null) {
      list.add(value);
    }
    update();
  }

  removeTag(int index) {
    list.removeAt(index);
    update();
  }

  selectInterestTag(value) {
    if (value != null) {
      interests.add(value);
    }
    update();
  }

  removeInterestsTag(int index) {
    interests.removeAt(index);
    update();
  }

  selectWeaknessTag(value) {
    if (value != null) {
      weakness.add(value);
    }
    update();
  }

  removeWeaknessTag(int index) {
    weakness.removeAt(index);
    update();
  }
}
