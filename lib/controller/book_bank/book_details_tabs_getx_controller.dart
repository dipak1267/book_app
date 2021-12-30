import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/book_details/widgets/about_tab.dart';
import 'package:project_beta/components/book_details/widgets/details_tab.dart';
import 'package:project_beta/components/book_details/widgets/reviews_tab.dart';
import 'package:project_beta/network/api_service.dart';
import 'package:project_beta/utils/shared_preference_local_storage.dart';

class BookDetailsTabsGetXController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController tabController;
  RxBool isLike = false.obs;
  RxBool isBookMark = false.obs;

  final List<Widget> tabs = [
    AboutTab(),
    DetailsTab(),
    Reviews(),
  ].obs;

  onliketap() {
    var data = {'isLike': isLike.value};
    ApiService.postLike(data: data);
  }

  getLikeAndbookMark(bookid) async {
    ApiService.getLike(bookId: bookid);

    var userId = await SharedPreferenceLocalStorage.getUserId();
    ApiService.getBookMark(userId: userId!);
  }

  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    super.onInit();
  }

  onbookmarktap() {
    var data = {'isBookMark': isBookMark.value};
    ApiService.postBookMark(data: data);
  }
}
