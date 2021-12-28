import 'package:flutter/material.dart';
import 'package:project_beta/src/common_widgets/circular_icon_container.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class AppCategoryWidget extends StatelessWidget {
  final String? asset;
  final String? title;
  final double? elevation;
  final Function? onTap;

  const AppCategoryWidget({
    this.asset,
    this.title,
    this.elevation: 5,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: MaterialTemplate(
        elevation: elevation!,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircularIconContainer(
              padding: Responsive.isMobile(context) ? 10 : 12,
              avatar: asset,
              iconBackgroundColor: AppColor.primaryColor.withOpacity(0.1),
              height: 24.h,
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(
                title!,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            )
          ],
        ).setMarginSymmetric(
          horizontal: 8.w,
          vertical: 4.h,
        ),
      ),
    );
  }
}
