import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_beta/components/learning_zone_detail/widgets/custom_box.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/dummy_constant.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class CourseCard extends StatelessWidget {
  final bool freeCourse;

  const CourseCard({Key? key, this.freeCourse: false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Beamer.of(context).beamToNamed(AppRoutes.learningZoneDetail),
      child: CardTemplate(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80.h,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      8.w,
                    ),
                    child: Container(
                      height: 80.h,
                      width: double.maxFinite,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.network(DummyConstants.studyImg),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 12.h,
                      width: 42.w,
                      decoration: BoxDecoration(
                          color: AppColor.black,
                          borderRadius: BorderRadius.circular(6.0)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                      child: Center(
                        child: Text(
                          "02:45",
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    color: AppColor.white,
                                    fontSize: 12.sp,
                                  ),
                        ),
                      ),
                    ),
                  ).setMarginOnly(right: 12.w, bottom: 4.h),
                  Align(
                      alignment: Alignment.topLeft,
                      child: CustomBoxContainer(
                        content: "22\n March",
                      )).setMarginOnly(
                    left: 10.w,
                    top: 4.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      AppAssets.playButton,
                      fit: BoxFit.contain,
                      color: AppColor.white,
                    ),
                  ),
                ],
              ),
            ),
            freeCourse
                ? Text(
                    "Video title will come here...",
                    maxLines: 2,
                    style: Theme.of(context).textTheme.subtitle2,
                  ).setMarginSymmetric(
                    vertical: 6.h,
                  )
                : Container(),
            freeCourse == true
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Video title will come here...",
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppAssets.wifi,
                                height: 4.h,
                                width: 4.w,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                LanguageConstants.online,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.greenSpring,
                                    ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),

                              /// Todo : change clock icon
                              Center(
                                child: SvgPicture.asset(
                                  AppAssets.playButton,
                                  height: 4.h,
                                  width: 4.w,
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                "5:00 PM - 6:00 PM",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.greenSpring),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 24.w),
                      Expanded(
                        child: AppButton(
                          onTap: () {},
                          label: LanguageConstants.bookNow,
                          height: 16.h,
                          fontSize: 10.sp,
                          backgroundColor: AppColor.primaryColor,
                          textColor: AppColor.white,
                        ),
                      ),
                    ],
                  ).setMarginOnly(
                    top: 6.h,
                  ),
          ],
        ).setMarginSymmetric(horizontal: 12.w, vertical: 4.h),
      ),
    );
  }
}

class CourseCardWeb extends StatelessWidget {
  final bool freeCourse;

  const CourseCardWeb({Key? key, this.freeCourse: false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Beamer.of(context).beamToNamed(AppRoutes.learningZoneDetail),
      child: CardTemplate(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: freeCourse == true ? 80.h : 48.h,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      8.w,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        DummyConstants.studyImg,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CustomBoxContainer(
                      content: "02:24",
                      height: 10,
                      width: 32,
                      backGroundColor: AppColor.darkBorderColor,
                      textColor: AppColor.white,
                    ),
                  ).setMarginOnly(
                    right: 12.w,
                    bottom: 4.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: CustomBoxContainer(
                      content: "22\n March",
                      fontSize: 8,
                      width: 40,
                      height: 16,
                    ),
                  ).setMarginOnly(
                    left: 10.w,
                    top: 4.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      AppAssets.playButton,
                      fit: BoxFit.contain,
                      color: AppColor.white,
                    ),
                  ),
                ],
              ),
            ),
            freeCourse
                ? Text(
                    "Video title will come here...",
                    maxLines: 2,
                    style: Theme.of(context).textTheme.subtitle1,
                  ).setMarginOnly(
                    top: 8.h,
                    bottom: 4.h,
                  )
                : Container(),
            freeCourse == true
                ? Container()
                : Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Video title will come here...",
                          maxLines: 2,
                          style: Theme.of(context).textTheme.subtitle1,
                        ).setMarginOnly(
                          top: 8.h,
                          bottom: 4.h,
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.wifi,
                                    size: 12.w,
                                    color: AppColor.secondaryColor,
                                  ).setMarginOnly(top: 1.h),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    LanguageConstants.online,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(
                                          color: AppColor.darkBorderColor
                                              .withOpacity(
                                            0.5,
                                          ),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 8.w,
                              ),

                              /// Todo : change clock icon
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.timer,
                                      size: 12.w,
                                      color: AppColor.secondaryColor,
                                    ).setMarginOnly(top: 1.h),
                                    SizedBox(
                                      width: 1.w,
                                    ),
                                    Text(
                                      "5:00 PM - 6:00 PM",
                                      maxLines: 2,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                            color: AppColor.darkBorderColor
                                                .withOpacity(
                                              0.5,
                                            ),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            AppButton(
                              onTap: () {},
                              label: LanguageConstants.bookNow,
                              height: 16.h,
                              fontSize: 10.sp,
                              backgroundColor: AppColor.primaryColor,
                              textColor: AppColor.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
          ],
        ).setMarginSymmetric(horizontal: 12.w, vertical: 4.h),
      ),
    );
  }
}
