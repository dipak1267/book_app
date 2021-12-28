import 'package:flutter/material.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/custom_divider.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class DietitianWebCard extends StatelessWidget {
  const DietitianWebCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardTemplate(
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.w,
                ),
              ),
            ),
            height: 56.h,
            child: Container(
              color: Colors.blueGrey,
            ),
          ).setMarginOnly(
            bottom: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'Dietitian Names',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4.sp)),
                  color: Colors.green.withOpacity(0.3),
                ),
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Text(
                  'Available',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 10.sp,
                      ),
                ),
              )
            ],
          ),
          Text(
            LanguageConstants.philosophy,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: AppColor.darkBorderColor.withOpacity(
                    0.5,
                  ),
                ),
          ).setMarginOnly(
            bottom: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.star,
                color: AppColor.secondaryColor,
                size: 16.w,
              ),
              Spacer(),
              Text(
                '10 Years Experience',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: AppColor.secondaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                    ),
              ),
            ],
          ),
          AppDivider().setMarginSymmetric(
            vertical: 4.h,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.monetization_on_outlined,
                      size: 18.sp,
                      color: Colors.orange,
                    ),
                    Text(
                      '\S300',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.location_on_outlined,
                size: 18.sp,
                color: Colors.orange,
              ),
              Text(
                'Punjab',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          )
        ],
      ).setMarginSymmetric(
        horizontal: 16.w,
        vertical: 8.h,
      ),
    );
  }
}
