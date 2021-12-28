import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/book_bank/book_bank_api_controller.dart';
import 'package:project_beta/src/common_widgets/app_text_form_field.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'book_details_box.dart';

class BookBankBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookBankApiController>(
      builder: (controller) {
        return Column(
          children: [
            AppTextFormField(
              prefixIcon: Icon(
                Icons.search,
                size: 24.w,
                color: AppColor.primaryColor,
              ),
              hintText: LanguageConstants.searchHere,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: controller.bookList.length > 2
                    ? ScrollPhysics()
                    : NeverScrollableScrollPhysics(),
                itemCount: controller.bookList.length,
                itemBuilder: (_, index) {
                  return BookDetailsBox(
                    book: controller.bookList[index],
                    onTap: () => Beamer.of(context).beamToNamed(
                      AppRoutes.bookDetails,
                      data: controller.bookList[index],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
