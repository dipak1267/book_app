import 'package:flutter/material.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class BorderContainer extends StatelessWidget {
  final String? content;

  const BorderContainer({Key? key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.w,
          ),
        ),
        border: Border.all(
          color: AppColor.nevada.withOpacity(0.5),
        ),
      ),
      padding: EdgeInsets.all(8.w),
      child: Text(
        content!,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
          color: AppColor.doveGrey,
          fontSize: 8.sp,
        ),
      ),
    );
  }
}
