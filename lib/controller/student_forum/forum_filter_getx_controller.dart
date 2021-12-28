import 'package:get/get.dart';

class ForumFilterGetXController extends GetxController {
  var _categoryList =
      ["topic 1", "topic 2", "topic 3", "topic 4", "topic 5", "topic 6"].obs;

  var _selectedValue = "topic 1";

  var list = [
    'Subject',
    'Class',
    'Book Type',
    'Price',
    'Book Condition',
    'Author Name',
    'Book'
  ].obs;

  late String selectedListItem;

  @override
  void onInit() {
    selectedListItem = list.first.toString();
    _selectedValue = _categoryList.first;
    super.onInit();
  }

  getSelectedItem(String item) async {
    selectedListItem = item;
    update();
  }

  get selectedValue => _selectedValue;

  set selectedValue(value) {
    _selectedValue = value;
  }

  get categoryList => _categoryList;

  set categoryList(value) {
    _categoryList = value;
  }
}
