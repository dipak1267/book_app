import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/dummy_constant.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class DietitianCard extends StatelessWidget {
  const DietitianCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardTemplate(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.w,
                ),
              ),
            ),
            height: 48.h,
            width: MediaQuery.of(context).size.width * 0.3,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.network(DummyConstants.dummyProfileImg),
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dietitian Names',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      CardTemplate(
                        radius: 4,
                        elevation: 0,
                        backgroundColor: Colors.greenAccent.withOpacity(0.3),
                        child: Text(
                          'Available',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    color: Colors.green,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ).setMarginSymmetric(horizontal: 4.w, vertical: 2.h),
                      )
                    ],
                  ),
                  fit: FlexFit.loose,
                ),
                Flexible(
                  child: Text(
                    'Profession Name',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: AppColor.darkBorderColor.withOpacity(0.5),
                        ),
                  ),
                  fit: FlexFit.loose,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star,
                      size: 18.sp,
                      color: Colors.orange,
                    ),
                    Text(
                      '10 Years Experience',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: AppColor.secondaryColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.monetization_on_outlined,
                          size: 14.sp,
                          color: Colors.orange,
                        ).setMarginOnly(right: 1.w),
                        Text(
                          '300',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                    SizedBox(width: 12.w),
                    Row(
                      children: [
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
                )
              ],
            ),
          )
        ],
      ).setMarginSymmetric(
        horizontal: 16.w,
        vertical: 6.h,
      ),
    );
  }
}
