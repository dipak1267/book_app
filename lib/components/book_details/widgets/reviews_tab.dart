import 'package:flutter/material.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/src/common_widgets/circular_icon_container.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircularIconContainer(
              padding: 8,
              avatar: AppAssets.student,
              iconBackgroundColor: AppColor.primaryColor.withOpacity(0.1),
              height: 18.h,
            ).setMarginOnly(
              right: 2.w,
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  'Alex',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                subtitle: Text(
                  '5 days ago',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
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
            )
          ],
        ),
      ],
    ).setMarginSymmetric(
      horizontal: 12.w,
      vertical: 4.h,
    );
  }
}
