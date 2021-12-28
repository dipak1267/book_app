import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class AddImage extends StatelessWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: AppColor.greenSpring,
      dashPattern: [16],
      borderType: BorderType.RRect,
      radius: Radius.circular(8.w),
      padding: EdgeInsets.all(8.w),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(6.w)),
        child: Container(
          width: double.infinity,
          height: 80.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppAssets.imageSquare,
                color: AppColor.doveGrey.withAlpha(100),
              ),
              SizedBox(height: 2.h),
              Text(
                LanguageConstants.uploadImage,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: AppColor.greenSpring,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
