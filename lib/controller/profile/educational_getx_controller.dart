import 'package:get/get.dart';

class EducationalGetXController extends GetxController {

  var list = ['Jan', 'Feb', 'March', 'April', 'may'].obs;

  late String selectedListItem;

  @override
  void onInit() {
    selectedListItem = list.first.toString();
    super.onInit();
  }

  getSelectedItem(String item) async {
    selectedListItem = item;
    update();
  }
}
