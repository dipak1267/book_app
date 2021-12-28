import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:project_beta/components/book_bank/widgets/book_details_box.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/book_bank/book_bank_api_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/book_list_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class BookBankWeb extends StatelessWidget {
  BookBankWeb({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                LanguageConstants.bookBank,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            GestureDetector(
              onTap: () =>
                  Beamer.of(context).beamToNamed(AppRoutes.bookBankFilter),
              child: SvgPicture.asset(
                AppAssets.filter,
                color: AppColor.primaryColor,
              ).setMarginOnly(
                right: 24.w,
              ),
            )
          ],
        ).setMarginOnly(bottom: 12.h, top: 6.h),
        Expanded(
          child: GetBuilder<BookBankApiController>(builder: (controller) {
            return GridView.builder(
              itemCount: controller.bookList.length,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              itemBuilder: (_, index) {
                return BookWebCard(
                  book: controller.bookList[index],
                  onTap: () {
                    Beamer.of(context).beamToNamed(
                      AppRoutes.bookDetails,
                      data: controller.bookList[index],
                    );
                  },
                ).setMarginOnly(
                  top: 2.h,
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisExtent: 148.h,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.w,
              ),
            ).setMarginOnly(
              bottom: 8.h,
            );
          }),
        ),
      ],
    ).setMarginSymmetric(
      horizontal: 24.w,
      vertical: 8.h,
    );
  }
}
