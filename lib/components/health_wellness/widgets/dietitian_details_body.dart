import 'package:flutter/material.dart';
import 'package:project_beta/components/learning_zone_detail/widgets/custom_box.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/circular_icon_container.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class DietitianDetailsBody extends StatelessWidget {
  const DietitianDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CardTemplate(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        12.sp,
                      ),
                    ),
                    color: Colors.grey,
                  ),
                  width: 336.w,
                  height: 60.h,
                  child: Stack(
                    children: [
                      // SvgPicture.asset(
                      //   AppAssets.person,
                      //   fit: BoxFit.contain,
                      //   width: 336.w,
                      //   height: 60.h,
                      // ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CustomBoxContainer(
                          content: 'Available',
                          height: 12,
                          width: 48,
                          backGroundColor: Colors.green,
                        ),
                      ).setMarginOnly(
                        right: 12.w,
                        bottom: 4.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dietitian Names',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    CircularIconContainer(
                      avatar: AppAssets.like,
                      padding: 6,
                      height: 24,
                      iconBackgroundColor: AppColor.primaryColor.withOpacity(
                        0.1,
                      ),
                    )
                  ],
                ),
                Text(
                  'Profession Name',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: AppColor.darkBorderColor.withOpacity(
                          0.3,
                        ),
                      ),
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Text(
                      'Experience:',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: AppColor.darkBorderColor.withOpacity(
                              0.3,
                            ),
                          ),
                    ),
                    Text(
                      '10 Years',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    SizedBox(width: 8.w),
                    Container(
                      height: 4.h,
                      width: 2.w,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'Fee:',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: AppColor.darkBorderColor.withOpacity(
                              0.3,
                            ),
                          ),
                    ),
                    Text(
                      '20',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Divider(color: Colors.grey.shade600),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Address',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            LanguageConstants.general,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                  color: AppColor.darkBorderColor.withOpacity(
                                    0.4,
                                  ),
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ],
                      ),
                    ),
                    AppButton(
                      onTap: () {},
                      label: 'View in Map',
                      height: 16.h,
                      fontSize: 12.sp,
                      backgroundColor: AppColor.primaryColor,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Divider(color: Colors.grey.shade600),
                SizedBox(height: 4.h),
                Text(
                  'Dietitian Degree',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(height: 6.h),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.sp)),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 2.h, horizontal: 14.w),
                          child: Text(
                            'MBBS',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.sp)),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 2.h, horizontal: 14.w),
                          child: Text(
                            'BDS',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.sp)),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 2.h, horizontal: 14.w),
                          child: Text(
                            'BAMS',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.sp)),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 2.h, horizontal: 14.w),
                          child: Text(
                            'BHMS',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.sp)),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 2.h, horizontal: 14.w),
                          child: Text(
                            'BYNS',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 6.h),
                Text(
                  'About Dietitian',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(height: 4.h),
                Text(
                  LanguageConstants.general,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: AppColor.darkBorderColor.withOpacity(
                          0.3,
                        ),
                      ),
                ),
              ],
            ).setMarginSymmetric(
              horizontal: 12.w,
              vertical: 8.h,
            ),
          ),
        ),
        AppButton(
          onTap: () {},
          label: 'BOOK NOW',
          height: 22.h,
          fontSize: 18.sp,
          textColor: Colors.white,
          backgroundColor: AppColor.primaryColor,
        )
      ],
    ).setMarginSymmetric(
      horizontal: 6.w,
    );
  }
}
