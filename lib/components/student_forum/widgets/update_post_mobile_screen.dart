import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/student_forum/update_post_getx_controller.dart';
import 'package:project_beta/src/common/app_text_form_field.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/common_widgets/snackbars.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class UpdatePostMobileScreen extends StatelessWidget {
  final String? id;
  UpdatePostMobileScreen({this.id});
  bool isDraftSaved = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UpdatePostGetXController>(
      init: UpdatePostGetXController(),
      builder: (controller) {
        controller.selectedId = id!;
        return WillPopScope(
          onWillPop: () => draftConfirmationDialog(context, controller),
          child: Scaffold(
            backgroundColor: AppColor.primaryColor,
            body: SafeArea(
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      leading: Container(),
                      expandedHeight: 52.h,
                      flexibleSpace: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  LanguageConstants.addPost,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26.0,
                                      color: AppColor.white),
                                ),
                                InkWell(
                                  onTap: () {
                                    draftConfirmationDialog(
                                        context, controller);
                                  },
                                  child: Container(
                                    height: 42.0,
                                    width: 42.0,
                                    child: Center(
                                      child: Icon(
                                        Icons.cancel,
                                        size: 32.0,
                                        color: AppColor.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      floating: false,
                      pinned: true,
                      backgroundColor: AppColor.primaryColor,
                    )
                  ];
                },
                body: Container(
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32.0),
                          topRight: Radius.circular(32.0))),
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 16.h),
                          AppDropDownList(
                            borderColor: AppColor.greenSpring,
                            labelTextStyle: GoogleFonts.barlow(
                                color: AppColor.primaryColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                            height: 13.h,
                            title: LanguageConstants.topicCategory,
                            items: controller.categoryList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                onTap: () {
                                  controller.selectedValue = value;
                                },
                                value: value,
                                child: Text(
                                  value,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                        color: AppColor.black,
                                      ),
                                ),
                              );
                            }).toList(),
                            value: controller.selectedValue,
                            onChanged: (String value) {},
                          ),
                          SizedBox(height: 6.h),
                          AppTextFormField(
                            controller: controller.subjectController,
                            hintText: LanguageConstants.subjectHere,
                            title: LanguageConstants.subject,
                            borderColor: AppColor.greenSpring,
                            borderWidth: 1.0,
                            textStyle: GoogleFonts.barlow(
                                color: AppColor.primaryColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 6.h),
                          AppTextFormField(
                            controller: controller.descriptionController,
                            hintText: LanguageConstants.descriptionHere,
                            title: LanguageConstants.description,
                            minLines: 7,
                            maxLines: 7,
                            borderColor: AppColor.greenSpring,
                            borderWidth: 1.0,
                            textStyle: GoogleFonts.barlow(
                                color: AppColor.primaryColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 12.h),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 16.0),
                          child: AppButton(
                            onTap: () {},
                            height: 24.h,
                            backgroundColor: AppColor.primaryColor,
                            label: LanguageConstants.publish.toUpperCase(),
                            borderRadius: BorderRadius.circular(2.0),
                            textStyle: TextStyle(
                                color: AppColor.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 70.0),
                          child: AppButton(
                            onTap: () {
                              if (isDraftSaved) {
                                Snackbars.showTextSnackBar(
                                  text: "Draft is already saved",
                                  context: context,
                                  type: "success",
                                );
                              } else {
                                controller.updateDraft();
                                isDraftSaved = true;
                              }
                            },
                            height: 24.h,
                            backgroundColor: AppColor.greenSpring,
                            label: "UPDATE DRAFT",
                            borderRadius: BorderRadius.circular(2.0),
                            textStyle: TextStyle(
                                color: AppColor.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 126.0),
                          child: AppButton(
                            onTap: () => Beamer.of(context)
                                .beamToNamed(AppRoutes.draftScreen),
                            height: 24.h,
                            backgroundColor: AppColor.greenSpring,
                            label: "CHECK SAVED DRAFT",
                            borderRadius: BorderRadius.circular(2.0),
                            textStyle: TextStyle(
                                color: AppColor.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  draftConfirmationDialog(context, controller) {
    return isDraftSaved
        ? isDraftSaved
        : showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                  height: 240.0,
                  color: Color(0xFF737373),
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 8.h,
                          ),
                          Container(
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.greenSpring.withAlpha(90),
                                ),
                                width: 36.0,
                                height: 4.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            "Would you like to save this post as a draft ?",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          AppButton(
                            onTap: () {
                              context.beamBack();
                            },
                            backgroundColor: AppColor.primaryColor,
                            height: 28.h,
                            fontSize: 22.sp,
                            label: 'CANCEL',
                            textColor: AppColor.backgroundColor,
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          AppButton(
                            onTap: () async {
                              await controller.updateDraft();
                              context.beamBack();
                            },
                            backgroundColor: AppColor.primaryColor,
                            height: 28.h,
                            fontSize: 22.sp,
                            label: 'SAVE AS DRAFT',
                            textColor: AppColor.backgroundColor,
                          ),
                        ],
                      ),
                    ),
                  ));
            });
  }
}
