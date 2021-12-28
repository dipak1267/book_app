import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/controller/login/signup_as_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/avatar_info.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/login_as_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class SignUpAsBody extends StatelessWidget {
  final SignupAsGetXController loginAsGetXController =
      Get.put(SignupAsGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupAsGetXController>(
      builder: (controller) {
        return Column(
          children: [
            Expanded(
              flex: 3,
              child: GridView.builder(
                itemCount: loginAsModel.length,
                shrinkWrap: true,
                semanticChildCount: 2,
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
                itemBuilder: (context, index) {
                  return AvatarInfo(
                    title: loginAsModel[index].title!,
                    avatar: loginAsModel[index].avatar!,
                    avatarBackgroundColor:
                        controller.selectedIndex.value == index
                            ? AppColor.lightPrimaryColor
                            : AppColor.primaryColor.withOpacity(0.1),
                    backGroundColor: controller.selectedIndex.value == index
                        ? AppColor.primaryColor
                        : AppColor.backgroundColor,
                    textColor: controller.selectedIndex.value == index
                        ? AppColor.backgroundColor
                        : AppColor.primaryColor,
                    onTap: () {
                      controller.setIndex(index, context);
                    },
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.15,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 16.w,
                ),
              ).setMarginOnly(
                bottom: 4.h,
                top: 8.h,
              ),
            ),
            AppButton(
              onTap: () {
                Beamer.of(context).beamToNamed(AppRoutes.login);
              },
              label: 'CONTINUE',
              height: 25.h,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              backgroundColor: AppColor.primaryColor,
              textColor: AppColor.backgroundColor,
            ).setMarginOnly(
              bottom: 6.h,
            ),
          ],
        ).setMarginSymmetric(
          horizontal: Responsive.isMobile(context)
              ? 16.w
              : Responsive.isTablet(context)
                  ? 80.w
                  : 32.w,
        );
      },
    );
  }
}
