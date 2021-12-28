import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class AvatarInfo extends StatelessWidget {
  final String avatar;
  final String title;
  final double? padding;
  final double? height;
  final Color? textColor;
  final Color? backGroundColor;
  final bool? selected;
  final Function? onTap;
  final Color avatarBackgroundColor;

  AvatarInfo({
    required this.avatar,
    required this.title,
    this.selected,
    this.onTap,
    this.textColor: AppColor.primaryColor,
    this.backGroundColor: AppColor.primaryColor,
    this.avatarBackgroundColor: AppColor.primaryColor,
    this.height,
    this.padding: 8,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: CardTemplate(
        backgroundColor: backGroundColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  height: height,
                  clipBehavior: Clip.hardEdge,
                  padding: EdgeInsets.only(
                      top: padding!.h, left: padding!.w, right: padding!.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: avatarBackgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.darkBackgroundColor.withOpacity(0.08),
                        blurRadius: 25.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          15.0, // Move to right 10  horizontally
                          15.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: SvgPicture.asset(
                    avatar,
                    fit: BoxFit.contain,
                  ),
                ).setMarginOnly(
                  bottom: 2.h,
                ),
              ),
              Flexible(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: textColor,
                      ),
                ),
                fit: FlexFit.loose,
              ),
            ],
          ),
        ),
      ),
    );
  }
}