import 'package:flutter/material.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/circular_icon_container.dart';
import 'package:project_beta/src/common_widgets/share_bottom_sheet.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class PageDownloadShareWidget extends StatelessWidget {
  const PageDownloadShareWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardTemplate(
      elevation: 1.5,
      backgroundColor: AppColor.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularAssetWithTitle(
            title: '50 Page',
            asset: AppAssets.book,
          ),
          CircularAssetWithTitle(
            title: '10k Downloads',
            asset: AppAssets.folder,
          ),
          InkWell(
            onTap: () => ShareBottomSheet.get(context),
            child: CircularAssetWithTitle(
              title: LanguageConstants.share,
              asset: AppAssets.share,
            ),
          )
        ],
      ).setMarginSymmetric(
        horizontal: 16.w,
        vertical: 4.h,
      ),
    ).setMarginOnly(
      bottom: 4.h,
    );
  }
}

class CircularAssetWithTitle extends StatelessWidget {
  final String? title;
  final String? asset;

  const CircularAssetWithTitle({Key? key, this.title, this.asset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularIconContainer(
          padding: 8,
          avatar: asset,
          iconBackgroundColor: AppColor.primaryColor.withOpacity(0.1),
          height: 20.h,
        ),
        SizedBox(height: 2.h),
        Text(
          title!,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
