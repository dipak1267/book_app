import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/src/common_widgets/circular_icon_container.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class CategoryItem extends StatelessWidget {
  final String icon;
  final String label;
  final int activeCatIndex;
  final int currentCatIndex;
  final Function onCatSelected;
  final double? height;
  final double? padding;

  CategoryItem({
    required this.icon,
    required this.label,
    required this.activeCatIndex,
    required this.onCatSelected,
    required this.currentCatIndex,
    this.height: 24,
    this.padding: 12,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = activeCatIndex == currentCatIndex
        ? AppColor.primaryColor
        : AppColor.white;

    return Column(
      children: [
        GestureDetector(
          onTap: () => onCatSelected(
              activeCatIndex == currentCatIndex ? -1 : currentCatIndex),
          child: CircularIconContainer(
            padding: padding!.w,
            avatar: icon,
            iconBackgroundColor: backgroundColor,
            height: height!.h,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: AppColor.black,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
        ),
      ],
    );
  }
}
