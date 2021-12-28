import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/book_list_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class BookDetailsBox extends StatelessWidget {
  final Function? onTap;
  final BookList? book;

  BookDetailsBox({
    Key? key,
    this.onTap,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Card(
        elevation: 1.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.w),
        ),
        child: Container(
          child: Row(
            children: [
              Container(
                height: 60.h,
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
              SizedBox(width: 8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          book!.bookType ?? LanguageConstants.category,
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    color: AppColor.secondaryColor,
                                  ),
                        ),
                        Spacer(),
                        Row(
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
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      book!.title!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      book!.subject!,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: AppColor.secondaryTextColor.withOpacity(0.5),
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      book!.authorName!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
            ],
          ).setMarginAll(value: 12.w),
        ),
      ),
    );
  }
}

class BookWebCard extends StatelessWidget {
  final Function? onTap;
  final BookList? book;

  const BookWebCard({Key? key, this.onTap, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: CardTemplate(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.w)),
                    color: AppColor.primaryColor,
                  ),
                  height: 42.h,
                  width: 62.w,
                  child: SvgPicture.asset(AppAssets.art),
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LanguageConstants.category,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: AppColor.fuelYellow,
                            ),
                      ),
                      Icon(
                        Icons.star,
                        color: AppColor.fuelYellow,
                        size: 20.w,
                      )
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    book!.title ?? "---",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    LanguageConstants.general,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: AppColor.darkBorderColor.withOpacity(0.5),
                        ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    book!.authorName ?? LanguageConstants.authorName,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ],
        ).setMarginSymmetric(
          horizontal: 10.w,
          vertical: 4.h,
        ),
      ),
    );
  }
}
