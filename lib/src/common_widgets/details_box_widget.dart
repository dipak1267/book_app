import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class DetailsBox extends StatelessWidget {
  final String avatarUrl;
  final String title;
  final Function? onTap;

  const DetailsBox(
      {Key? key, required this.avatarUrl, required this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: CardTemplate(
        elevation: 3,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: CircleAvatar(
                  radius: Responsive.isMobile(context) ||
                          Responsive.isTablet(context)
                      ? 36.w
                      : 40.w,
                  backgroundColor: AppColor.primaryColor.withOpacity(0.1),
                  child: SvgPicture.asset(
                    avatarUrl,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ],
          ),
        ).setMarginSymmetric(
          vertical: 8.h,
          horizontal: 8.w,
        ),
      ),
    );
  }
}

class HomeCategoryCard extends StatelessWidget {
  final String? avatarUrl;
  final String? title;
  final Function? onTap;
  final double elevation;

  const HomeCategoryCard(
      {Key? key, this.avatarUrl, this.title, this.onTap, this.elevation: 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: CardTemplate(
        elevation: elevation,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 40.w,
                backgroundColor: AppColor.primaryColor.withOpacity(0.1),
                child: SvgPicture.asset(
                  avatarUrl!,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                  title!,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
