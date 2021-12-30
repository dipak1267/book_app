import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/book_details/widgets/BookDetailsTabView.dart';
import 'package:project_beta/components/book_details/widgets/page_download_share_widget.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/book_bank/book_details_tabs_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/circular_icon_container.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/book_list_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class BookDetailsBody extends StatefulWidget {
  final BookList? book;

  BookDetailsBody({Key? key, this.book}) : super(key: key);

  @override
  State<BookDetailsBody> createState() => _BookDetailsBodyState();
}

class _BookDetailsBodyState extends State<BookDetailsBody> {
  final ctrl = Get.put(BookDetailsTabsGetXController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(
                    () => InkWell(
                      child: CircularIconContainer(
                        avatar: AppAssets.like,
                        padding: 12,
                        iconBackgroundColor: ctrl.isLike.value
                            ? AppColor.lightYellow
                            : AppColor.white,
                        height: 24.h,
                      ),
                      onTap: () {
                        ctrl.isLike.value = true;
                        ctrl.onliketap();
                      },
                    ),
                  ),
                  Container(
                    height: 72.h,
                    width: 104.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.w),
                      color: Colors.indigo,
                    ),
                    child: SvgPicture.asset(
                      AppAssets.scientist,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Obx(
                    () => InkWell(
                      child: CircularIconContainer(
                        avatar: AppAssets.bookmark,
                        padding: 12,
                        iconBackgroundColor: ctrl.isBookMark.value
                            ? AppColor.lightYellow
                            : AppColor.white,
                        height: 24.h,
                      ),
                      onTap: () {
                        ctrl.isBookMark.value = true;
                        ctrl.onbookmarktap();
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: AppColor.secondaryColor,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColor.secondaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                widget.book!.title ?? '----',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                widget.book!.bookType ?? LanguageConstants.category,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: AppColor.secondaryColor,
                    ),
              ),
              SizedBox(
                height: 4.h,
              ),
              PageDownloadShareWidget(),
              BookDetailsTabView(),
            ],
          ),
        ),
        SizedBox(height: 4.h),
        double.parse(widget.book!.priceRange!) > 0
            ? Row(
                children: [
                  CardTemplate(
                    radius: 4,
                    child: Container(
                      height: 22.h,
                      alignment: Alignment.center,
                      child: Text(
                        '${widget.book!.priceRange} \$',
                        style: Theme.of(context).textTheme.subtitle1,
                      ).setMarginAll(
                        value: 14.w,
                      ),
                    ),
                  ).setMarginOnly(
                    right: 16.w,
                  ),
                  Expanded(
                    child: AppButton(
                      onTap: () {},
                      label: LanguageConstants.collectNow,
                      backgroundColor: AppColor.primaryColor,
                      height: 22.h,
                      fontSize: 16.sp,
                      textColor: AppColor.backgroundColor,
                    ),
                  )
                ],
              )
            : AppButton(
                onTap: () {},
                label: LanguageConstants.downloadAsFree,
                backgroundColor: AppColor.primaryColor,
                height: 22.h,
                fontSize: 16.sp,
                textColor: AppColor.backgroundColor,
              ),
      ],
    );
  }

  @override
  void initState() {
    ctrl.getLikeAndbookMark(widget.book?.id.toString());
    super.initState();
  }
}
