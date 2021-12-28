import 'package:flutter/material.dart';
import 'package:project_beta/components/health_wellness/widgets/book_dietitian_body.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_close_button.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';

class BookDietitian extends StatelessWidget {
  const BookDietitian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: SliverAppBarTemplate(
        title: LanguageConstants.bookDietitian,
        expandedHeight: 48.h,
        fontSize: 18.sp,
        trialWidgetEnabled: true,
        trailingWidget: AppCloseButton(),
        body: BookDietitianBody(),
      ),
      tablet: SliverAppBarTemplate(
        title: LanguageConstants.bookDietitian,
        expandedHeight: 48.h,
        fontSize: 18.sp,
        trialWidgetEnabled: true,
        trailingWidget: AppCloseButton(),
        body: BookDietitianBody(),
      ),
      desktop: SliverAppBarTemplate(
        title: LanguageConstants.bookDietitian,
        expandedHeight: 48.h,
        fontSize: 18.sp,
        trialWidgetEnabled: true,
        trailingWidget: AppCloseButton(),
        body: BookDietitianBody(),
      ),
    );
  }
}
