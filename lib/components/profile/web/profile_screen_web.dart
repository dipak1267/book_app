import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/profile/profile_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class ProfileScreenWeb extends StatelessWidget {
  const ProfileScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.lightYellow,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: AppColor.white,
              border: Border(
                right: BorderSide(
                  width: 1,
                  color: AppColor.darkBorderColor.withOpacity(
                    0.03,
                  ),
                ),
              ),
            ),
            child: Image.asset(
              AppAssets.logoPng,
              height: 16.h,
              color: AppColor.secondaryColor,
              fit: BoxFit.contain,
            ).setMarginOnly(
              right: 12.w,
              left: 12.w,
              bottom: 64.h,
            ),
          ),
          Expanded(
            child: GetBuilder<ProfileGetXController>(
              init: ProfileGetXController(),
              builder: (controller) {
                return Column(
                  children: [
                    Container(
                      color: AppColor.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: DefaultTabController(
                              length: controller.webScreens.length,
                              initialIndex: controller.index.value,
                              child: Container(
                                child: TabBar(
                                  controller: controller.tabController,
                                  labelColor: AppColor.primaryColor,
                                  onTap: (index) {
                                    controller.animateController(index);
                                  },
                                  indicatorColor: AppColor.primaryColor,
                                  indicatorPadding: EdgeInsets.zero,
                                  labelStyle:
                                      Theme.of(context).textTheme.headline6,
                                  unselectedLabelStyle:
                                      Theme.of(context).textTheme.headline6,
                                  unselectedLabelColor: AppColor
                                      .darkBackgroundColor
                                      .withOpacity(0.5),
                                  labelPadding: EdgeInsets.symmetric(
                                    vertical: 8.h,
                                  ),
                                  tabs: [
                                    Text(
                                      LanguageConstants.personal,
                                    ),
                                    Text(
                                      LanguageConstants.educational,
                                    ),
                                    Text(
                                      LanguageConstants.personality,
                                    ),
                                  ],
                                ).setMarginOnly(
                                  top: 4.h,
                                ),
                                width: MediaQuery.of(context).size.width / 2,
                              ),
                            ),
                            fit: FlexFit.loose,
                          ),
                          GestureDetector(
                            child: Text(
                              LanguageConstants.skip,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ).setMarginOnly(
                            right: 24.w,
                          )
                        ],
                      ).setMarginOnly(
                        top: 12.h,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: TabBarView(
                          dragStartBehavior: DragStartBehavior.start,
                          controller: controller.tabController,
                          children: controller.webScreens
                              .map((tabWidget) => tabWidget)
                              .toList(),
                        ).setMarginSymmetric(
                          horizontal: 8.w,
                          vertical: 8.h,
                        ),
                      ),
                    ),
                    AppButton(
                      label: LanguageConstants.kContinue,
                      onTap: () {},
                      height: 22.h,
                      fontSize: 18.sp,
                      backgroundColor: AppColor.primaryColor,
                      textColor: AppColor.backgroundColor,
                      side: BorderSide(
                        style: BorderStyle.solid,
                        color: AppColor.darkBorderColor,
                        width: .25.w,
                      ),
                    ).setMarginSymmetric(
                      vertical: 12.h,
                      horizontal: 200.w,
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
