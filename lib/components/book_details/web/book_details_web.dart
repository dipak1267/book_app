import 'package:flutter/material.dart';
import 'package:project_beta/components/book_details/web/widgets/booking_details_container_web.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/custom_divider.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/book_list_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'widgets/similar_book_widget_web.dart';

class BookDetailsWeb extends StatelessWidget {
  final BookList? book;

  const BookDetailsWeb({Key? key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebTemplate(
      pageTitle: LanguageConstants.bookDetails,
      body: Container(
        margin: EdgeInsets.all(16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BookDetailsContainer(
              book: book,
            ).setMarginSymmetric(
              horizontal: 16.w,
            ),
            Expanded(
              child: ListView(
                controller: ScrollController(),
                children: [
                  Text(
                    'Similar Books ',
                    style: Theme.of(context).textTheme.headline5,
                  ).setMarginOnly(
                    bottom: 8.h,
                  ),
                  CardTemplate(
                    backgroundColor: AppColor.white,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (_, index) => SimilarBooksWidgetWeb(),
                      separatorBuilder: (_, index) =>
                          AppDivider().setMarginSymmetric(
                        vertical: 2.h,
                      ),
                    ).setMarginSymmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
