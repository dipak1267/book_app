import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/components/health_wellness/dietitian/add_health_wealth.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class AddHealthWellnessBody extends StatelessWidget {
  const AddHealthWellnessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              AppDropDownList(
                title: LanguageConstants.selectAge,
                height: 20,
                items: [],
              ),
              SizedBox(height: 4.h),
              AppDropDownList(
                title: LanguageConstants.weight,
                height: 20,
                items: [],
              ),
              SizedBox(height: 4.h),
              AppDropDownList(
                title: LanguageConstants.gender,
                height: 20,
                items: [],
              ),
              SizedBox(height: 4.h),
              AppDropDownList(
                title: LanguageConstants.dietPreference,
                height: 20,
                items: [],
              ),
              SizedBox(height: 4.h),
              AppDropDownList(
                title: LanguageConstants.anyAllergies,
                height: 20,
                items: [],
              ),
              SizedBox(height: 4.h),
              AppDropDownList(
                title: LanguageConstants.anySpecificHealth,
                height: 20,
                items: [],
              ),
              SizedBox(height: 4.h),
              Text(
                LanguageConstants.preferenceOption,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: 4.h),
              SelectiveContainer(
                label: 'football',
                icon: Icons.close,
              ),
              SizedBox(height: 4.h),
              Divider(),
              SizedBox(height: 4.h),
              Text(
                LanguageConstants.eatingHabits,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: 4.h),
              SelectiveContainer(
                label: 'football',
                icon: Icons.close,
              ),
            ],
          ),
        ),
        AppButton(
          onTap: () =>
              Beamer.of(context).beamToNamed(AppRoutes.dietitianProfile),
          label: LanguageConstants.kContinue.toUpperCase(),
          height: 22.h,
          textColor: AppColor.white,
          backgroundColor: AppColor.primaryColor,
        ).setMarginSymmetric(
          vertical: 4.h,
        )
      ],
    );
  }
}
