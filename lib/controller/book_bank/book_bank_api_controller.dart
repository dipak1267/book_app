import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/network/api_service.dart';
import 'package:project_beta/src/models/book_list_model.dart';

class BookBankApiController extends GetxController {
  var bookList = [].obs;
  final titleController = TextEditingController();
  final subjectController = TextEditingController();
  final languageController = TextEditingController();
  final authorNameController = TextEditingController();
  final isbnNoController = TextEditingController();
  final bookTypeController = TextEditingController();
  final conditionController = TextEditingController();
  final priceRangeController = TextEditingController();
  final categoryController = TextEditingController();
  final classStdController = TextEditingController();
  final bookBoardNameController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  getBookList() async {
    final response = await ApiService.getBooks();
    response.data.forEach((v) {
      BookList book = BookList.fromJson(v);
      bookList.add(book);
    });
    print('BookList: $bookList');

    update();
  }

  onPublishTap() async {
    if (formKey.currentState!.validate()) {
      BookList book = BookList(
          id: 1,
          title: titleController.text,
          subject: subjectController.text,
          language: languageController.text,
          authorName: authorNameController.text,
          isbnNo: isbnNoController.text,
          bookType: bookTypeController.text,
          condition: conditionController.text,
          priceRange: priceRangeController.text);
      ApiService.postBook(data: book.toJson());
    }
  }

  @override
  void onInit() {
    getBookList();
    super.onInit();
  }
}
