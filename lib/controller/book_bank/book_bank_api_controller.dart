import 'package:get/get.dart';
import 'package:project_beta/network/api_service.dart';
import 'package:project_beta/src/models/book_list_model.dart';

class BookBankApiController extends GetxController {
  var bookList = [].obs;

  getBookList() async {
    final response = await ApiService.getBooks(categoryId: '1');
    response.data.forEach((v) {
      BookList book = BookList.fromJson(v);
      bookList.add(book);
    });
    print('BookList: $bookList');

    update();
  }

  @override
  void onInit() {
    getBookList();
    super.onInit();
  }
}
