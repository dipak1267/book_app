import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:project_beta/constants/dummy_constant.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'about_training_widget.dart';
import 'custom_box.dart';
import 'date_time_training_mode_widget.dart';
import 'training_image_list_widget.dart';

class LearningZoneDetailsWeb extends StatelessWidget {
  const LearningZoneDetailsWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebTemplate(
      pageTitle: LanguageConstants.trainingDetails,
      body: Column(
        children: [
          Expanded(
            child: CardTemplate(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    height: 160.h,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.w),
                          child: Container(
                            width: double.maxFinite,
                            height: 160.h,
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
                              borderRadius: BorderRadius.circular(6.w),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 2.0),
                            child: Center(
                              child: Text(
                                "02:45",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                      color: AppColor.white,
                                      fontSize: 12.sp,
                                    ),
                              ),
                            ),
                          ),
                        ).setMarginOnly(
                          right: 12.w,
                          bottom: 4.h,
                        ),
                        Align(
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.play_circle_outline,
                              color: AppColor.greenSpring,
                              size: 48.w,
                            ),
                          ),
                        )
                      ],
                    ),
                  ).setMarginSymmetric(
                    horizontal: 16.w,
                    vertical: 4.h,
                  ),
                  //Video title and category
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Video title will come here...",
                            style: Theme.of(context).textTheme.subtitle2!,
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            "Category Name",
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.secondaryColor,
                                    ),
                          ),
                        ],
                      ),
                      CustomBoxContainer(
                        content: "\$20",
                      ),
                    ],
                  ).setMarginSymmetric(
                    horizontal: 16.w,
                    vertical: 4.h,
                  ),
                  Divider(
                    color: AppColor.greenSpring,
                    height: 14.h,
                  ),
                  // Date & Time
                  DateTrainingModeWidget().setMarginSymmetric(
                    horizontal: 16.w,
                    vertical: 4.h,
                  ),
                  Divider(
                    color: AppColor.greenSpring,
                    height: 14.h,
                  ),
                  TrainingImageHorizontalList().setMarginSymmetric(
                    horizontal: 16.w,
                    vertical: 4.h,
                  ),
                  AboutTrainingWidget().setMarginSymmetric(
                    horizontal: 16.w,
                    vertical: 4.h,
                  ),
                ],
              ),
            ).setMarginSymmetric(
              vertical: 2.h,
              horizontal: 24.w,
            ),
          ),
          AppButton(
            height: 22.h,
            onTap: () {
              print("aks for reschedule");
            },
            fontSize: 14.sp,
            textColor: AppColor.backgroundColor,
            label: LanguageConstants.askForReschedule.toUpperCase(),
            backgroundColor: AppColor.primaryColor,
          ).setMarginSymmetric(
            vertical: 2.h,
            horizontal: 24.w,
          ),
        ],
      ),
    );
  }
}
