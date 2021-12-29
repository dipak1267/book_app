import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/profile/widgets/upload_image_widget.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/book_bank/book_bank_api_controller.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_text_form_field.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class AddBookBody extends StatelessWidget {
  AddBookBody({Key? key}) : super(key: key);
  BookBankApiController ctrl = Get.put(BookBankApiController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UploadImageWidget(
                profileTag: '+',
                fontSize: 36.sp,
              ),
              SizedBox(height: 2.h),
              Text(
                LanguageConstants.addBookCoverPic,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(color: AppColor.darkBorderColor.withOpacity(0.5)),
              ),
              SizedBox(height: 8.h),
              Form(
                key: ctrl.formKey,
                child: Column(children: [
                  AppTextFormField(
                    title: LanguageConstants.title,
                    controller: ctrl.titleController,
                    validator: (val) {
                      if (val!.isEmpty) return "can't empty";
                    },
                  ),
                  SizedBox(height: 6.h),
                  AppTextFormField(
                    title: LanguageConstants.subject,
                    controller: ctrl.subjectController,
                    validator: (val) {
                      if (val!.isEmpty) return "can't empty";
                    },
                  ),
                  SizedBox(height: 6.h),
                  AppTextFormField(
                    title: LanguageConstants.language,
                    controller: ctrl.languageController,
                    validator: (val) {
                      if (val!.isEmpty) return "can't empty";
                    },
                  ),
                  SizedBox(height: 6.h),
                  AppTextFormField(
                    title: LanguageConstants.authorName,
                    controller: ctrl.authorNameController,
                    validator: (val) {
                      if (val!.isEmpty) return "can't empty";
                    },
                  ),
                  SizedBox(height: 6.h),
                  AppTextFormField(
                    title: LanguageConstants.isbnNo,
                    controller: ctrl.isbnNoController,
                    validator: (val) {
                      if (val!.isEmpty) return "can't empty";
                    },
                  ),
                  SizedBox(height: 6.h),
                  AppTextFormField(
                    title: LanguageConstants.bookType,
                    controller: ctrl.bookTypeController,
                    validator: (val) {
                      if (val!.isEmpty) return "can't empty";
                    },
                  ),
                  SizedBox(height: 6.h),
                  AppTextFormField(
                    title: 'Condition',
                    controller: ctrl.conditionController,
                    validator: (val) {
                      if (val!.isEmpty) return "can't empty";
                    },
                  ),
                  SizedBox(height: 6.h),
                  AppTextFormField(
                    title: LanguageConstants.priceRange,
                    controller: ctrl.priceRangeController,
                    validator: (val) {
                      if (val!.isEmpty) return "can't empty";
                    },
                  ),
                  SizedBox(height: 6.h),
                  AppTextFormField(
                    title: LanguageConstants.category,
                    controller: ctrl.categoryController,
                    validator: (val) {
                      if (val!.isEmpty) return "can't empty";
                    },
                  ),
                  SizedBox(height: 6.h),
                  AppTextFormField(
                    title: 'ClassStd',
                    controller: ctrl.classStdController,
                    validator: (val) {
                      if (val!.isEmpty) return "can't empty";
                    },
                  ),
                  SizedBox(height: 6.h),
                  AppTextFormField(
                    title: 'BookBoardName',
                    controller: ctrl.bookBoardNameController,
                    validator: (val) {
                      if (val!.isEmpty) return "can't empty";
                    },
                  ),
                ]),
              )
            ],
          ).setMarginOnly(
            top: 8.h,
            bottom: 8.h,
          ),
        ),
        SizedBox(height: 8.h),
        AppButton(
          onTap: () => ctrl.onPublishTap(),
          label: LanguageConstants.publish,
          backgroundColor: AppColor.primaryColor,
          height: 22.h,
          fontSize: 18.sp,
          textColor: AppColor.backgroundColor,
        ).setMarginOnly(
          bottom: 12.h,
        ),
      ],
    );
  }
}
