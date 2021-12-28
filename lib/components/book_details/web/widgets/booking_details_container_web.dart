import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/components/book_details/widgets/bookmark.dart';
import 'package:project_beta/components/book_details/widgets/like.dart';
import 'package:project_beta/components/book_details/widgets/page_download_share_widget.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/book_list_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'book_details_tabs.dart';

class BookDetailsContainer extends StatelessWidget {
  final BookList? book;
  const BookDetailsContainer({Key? key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          book!.title ?? '----',
          style: Theme.of(context).textTheme.headline5,
        ).setMarginOnly(
          bottom: 8.h,
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            child: CardTemplate(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 88.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.w),
                          color: Colors.indigo,
                        ),
                        child: SvgPicture.asset(
                          AppAssets.scientist,
                          fit: BoxFit.contain,
                        ),
                      ).setMarginOnly(
                        right: 4.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColor.secondaryColor,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  book!.bookType ?? LanguageConstants.category,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                        color: AppColor.secondaryColor,
                                      ),
                                ),
                                Spacer(),
                                LikeButton(),
                                SizedBox(width: 4.w),
                                BookmarkButton(),
                              ],
                            ),
                            Text(
                              book!.title ?? '----',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              book!.subject ?? '----',
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: AppColor.darkBorderColor.withOpacity(
                                      0.3,
                                    ),
                                  ),
                            ).setMarginOnly(
                              bottom: 4.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircularAssetWithTitle(
                                  title: '50 Page',
                                  asset: AppAssets.book,
                                ).setMarginOnly(
                                  right: 36.w,
                                ),
                                CircularAssetWithTitle(
                                  title: '10k Downloads',
                                  asset: AppAssets.folder,
                                ).setMarginOnly(
                                  right: 36.w,
                                ),
                                CircularAssetWithTitle(
                                  title: LanguageConstants.share,
                                  asset: AppAssets.share,
                                ),
                              ],
                            )
                          ],
                        ).setMarginSymmetric(
                          horizontal: 8.w,
                        ),
                      ),
                    ],
                  ).setMarginOnly(
                    bottom: 24.h,
                  ),
                  BookDetailsTabs(),
                ],
              ).setMarginSymmetric(
                horizontal: 24.w,
                vertical: 12.h,
              ),
              backgroundColor: AppColor.white,
            ),
          ),
        ),
      ],
    );
  }
}
