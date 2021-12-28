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
import 'package:project_beta/theme/app_theme.dart';

class SignUpAsWeb extends StatelessWidget {
  final SignupAsGetXController loginAsGetXController =
      Get.put(SignupAsGetXController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupAsGetXController>(
      builder: (controller) {
        return Column(
          children: [
            Text(
              'Sign Up as',
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
            ).setMarginOnly(bottom: 24.h, top: 24.h),
            Expanded(
              child: GridView.builder(
                itemCount: loginAsModel.length,
                shrinkWrap: true,
                semanticChildCount: 2,
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
                itemBuilder: (context, index) {
                  return AvatarInfo(
                    height: 56.h,
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
                  crossAxisCount: 3,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 24.w,
                  mainAxisSpacing: 12.h,
                ),
              ).setMarginOnly(
                bottom: 16.h,
                top: 12.h,
              ),
            ),
            AppButton(
              onTap: () {
                Beamer.of(context).beamToNamed(AppRoutes.login);
              },
              label: 'CONTINUE',
              height: 28.h,
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              backgroundColor: AppColor.primaryColor,
              textColor: AppColor.backgroundColor,
            ).setMarginOnly(
              bottom: 12.h,
            ),
          ],
        ).setMarginSymmetric(
          horizontal: 32.w,
          vertical: 4.h,
        );
      },
    );
  }
}
