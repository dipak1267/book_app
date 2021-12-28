import 'package:flutter/material.dart';
import 'package:project_beta/components/book_bank/web/book_bank_filter_web.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_close_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'widgets/book_bank_filter_body.dart';

class BookBankFilterScreen extends StatelessWidget {
  const BookBankFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: SliverAppBarTemplate(
        trialWidgetEnabled: true,
        title: LanguageConstants.filter,
        fontSize: 16.sp,
        backgroundColor: AppColor.primaryColor,
        expandedHeight: 48.h,
        bottomHeight: 2.h,
        leading: false,
        trailingWidget: AppCloseButton(),
        body: BookBankFilterBody().setMarginSymmetric(
          horizontal: 24.w,
          vertical: 6.h,
        ),
      ),
      tablet: SliverAppBarTemplate(
        trialWidgetEnabled: true,
        title: LanguageConstants.filter,
        fontSize: 18.sp,
        backgroundColor: AppColor.primaryColor,
        expandedHeight: 64.h,
        bottomHeight: 4.h,
        trailingWidget: AppCloseButton(),
        body: BookBankFilterBody().setMarginSymmetric(
          horizontal: 64.w,
          vertical: 12.h,
        ),
      ),
      desktop: WebTemplate(
        pageTitle: LanguageConstants.filter,
        body: BookBankFilterWeb().setMarginSymmetric(
          horizontal: 48.w,
          vertical: 12.h,
        ),
      ),
    );
  }
}
