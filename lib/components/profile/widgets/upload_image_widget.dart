import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/controller/profile/personal_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

class UploadImageWidget extends StatelessWidget {
  final String profileTag;
  final double? fontSize;
  final bool isCameraIconRequired;
  final ImagePickerGetXController imagePickerGetXController =
      Get.put(ImagePickerGetXController());

  UploadImageWidget({
    Key? key,
    this.profileTag: 'Add \n Profile pic',
    this.fontSize,
    this.isCameraIconRequired: false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImagePickerGetXController>(
      builder: (controller) => Container(
        height: Responsive.isMobile(context)
            ? 66.h
            : Responsive.isTablet(context)
                ? 70.h
                : 72.h,
        width: MediaQuery.of(context).size.width / 3,
        child: GestureDetector(
          onTap: () => controller.getImage(),
          child: Stack(
            clipBehavior: Clip.hardEdge,
            fit: StackFit.loose,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                child: (controller.selectedImagePath.isNotEmpty)
                    ? CircleAvatar(
                        backgroundColor: AppColor.silverAccent,
                        radius: 24.h,
                        backgroundImage:
                            Image.file(File(controller.selectedImagePath.value))
                                .image,
                      )
                    : CircleAvatar(
                        backgroundColor:
                            AppColor.primaryColor.withOpacity(0.15),
                        radius: 24.h,
                        child: Text(
                          profileTag,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: AppColor.secondaryTextColor
                                        .withOpacity(0.5),
                                    fontWeight: FontWeight.w700,
                                    fontSize: fontSize,
                                  ),
                        ).setMarginAll(
                          value: 14.w,
                        ),
                      ),
                padding: EdgeInsets.all(4.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColor.secondaryColor,
                    width: 4,
                  ),
                ),
              ),
              isCameraIconRequired == true
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color:
                                AppColor.secondaryTextColor.withOpacity(0.05),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: AppColor.backgroundColor,
                          radius: 16.w,
                          child: Icon(
                            Icons.camera_alt,
                            color:
                                AppColor.secondaryTextColor.withOpacity(0.35),
                            size: 18.w,
                          ),
                        ),
                      ),
                    ).setMarginOnly(
                      left: 64.w,
                    )
                  : Container()
            ],
          ).setMarginOnly(
            top: 4.h,
            bottom: 8.h,
          ),
        ),
      ),
    );
  }
}
