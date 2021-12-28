import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/instance_manager.dart';
import 'package:project_beta/components/book_bank/web/book_bank_web.dart';
import 'package:project_beta/components/book_bank/widgets/book_bank_body.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/book_bank/book_bank_api_controller.dart';
import 'package:project_beta/src/common_widgets/app_floating_action_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class BookBankScreen extends StatelessWidget {
  final BookBankApiController bookBankApiController =
      Get.put(BookBankApiController());

  BookBankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: AppBarTemplate(
        title: LanguageConstants.bookBankCaps,
        toolbarHeight: 16.h,
        backGroundColor: AppColor.lightYellow,
        suffixWidget: GestureDetector(
          onTap: () => Beamer.of(context).beamToNamed(
            AppRoutes.bookBankFilter,
          ),
          child: SvgPicture.asset(
            AppAssets.filter,
            color: AppColor.primaryColor,
          ).setMarginOnly(
            right: 24.w,
          ),
        ),
        floatingActionButton: AppFloatingActionButton(
          onTap: () => Beamer.of(context).beamToNamed(
            AppRoutes.addBook,
          ),
        ),
        body: BookBankBody().setMarginSymmetric(
          horizontal: 24.w,
        ),
      ),
      tablet: AppBarTemplate(
        title: LanguageConstants.bookBankCaps,
        toolbarHeight: 16.h,
        backGroundColor: AppColor.lightYellow,
        suffixWidget: GestureDetector(
          onTap: () => Beamer.of(context).beamToNamed(
            AppRoutes.bookBankFilter,
          ),
          child: SvgPicture.asset(
            AppAssets.filter,
            color: AppColor.primaryColor,
          ).setMarginOnly(
            right: 24.w,
          ),
        ),
        floatingActionButton: AppFloatingActionButton(
          onTap: () => Beamer.of(context).beamToNamed(
            AppRoutes.addBook,
          ),
        ),
        body: BookBankBody().setMarginSymmetric(
          horizontal: 24.w,
          vertical: 2.h,
        ),
      ),
      desktop: WebTemplate(
        body: BookBankWeb(),
      ),
    );
  }
}
