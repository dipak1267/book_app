import 'package:flutter/material.dart';
import 'package:project_beta/components/book_bank/web/add_book_web.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_close_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';
import 'widgets/add_book_body.dart';

class AddBookScreen extends StatelessWidget {
  const AddBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: SliverAppBarTemplate(
        trialWidgetEnabled: true,
        title: LanguageConstants.addBook,
        fontSize: 16.sp,
        backgroundColor: AppColor.primaryColor,
        expandedHeight: 48.h,
        bottomHeight: 4.h,
        trailingWidget: AppCloseButton(),
        leading: false,
        body: AddBookBody().setMarginSymmetric(
          horizontal: 24.w,
        ),
      ),
      tablet: SliverAppBarTemplate(
        trialWidgetEnabled: true,
        title: LanguageConstants.addBook,
        fontSize: 18.sp,
        backgroundColor: AppColor.primaryColor,
        expandedHeight: 48.h,
        bottomHeight: 2.h,
        trailingWidget: AppCloseButton(),
        body: AddBookBody().setMarginSymmetric(
          horizontal: 64.w,
        ),
      ),
      desktop: WebTemplate(
        pageTitle: LanguageConstants.addBook,
        body: AddBookWeb().setMarginSymmetric(
          horizontal: 48.w,
          vertical: 8.h,
        ),
      ),
    );
  }
}
