import 'package:flutter/material.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/custom_divider.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class DetailsTab extends StatelessWidget {
  const DetailsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandedTextWidget(
          title: LanguageConstants.category,
          subTitle: 'Sports',
        ).setMarginOnly(
          bottom: 4.h,
        ),
        AppDivider(),
        ExpandedTextWidget(
          title: LanguageConstants.class$,
          subTitle: '10',
        ).setMarginOnly(
          top: 4.h,
          bottom: 4.h,
        ),
        AppDivider(),
        ExpandedTextWidget(
          title: LanguageConstants.bookType,
          subTitle: 'PDF',
        ).setMarginOnly(
          top: 4.h,
          bottom: 4.h,
        ),
      ],
    ).setMarginSymmetric(
      horizontal: 12.w,
      vertical: 4.h,
    );
  }
}

class ExpandedTextWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;

  const ExpandedTextWidget({Key? key, this.title, this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Text(
            title!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Text(
          subTitle!,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: AppColor.darkBackgroundColor.withOpacity(0.4),
              ),
        )
      ],
    );
  }
}
