
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/book_details/widgets/about_tab.dart';
import 'package:project_beta/components/book_details/widgets/details_tab.dart';
import 'package:project_beta/components/book_details/widgets/reviews_tab.dart';

class BookDetailsTabsGetXController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController tabController;

  final List<Widget> tabs = [
    AboutTab(),
    DetailsTab(),
    Reviews(),
  ].obs;

  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    super.onInit();
  }
}