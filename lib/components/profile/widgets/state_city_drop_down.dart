import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/profile/personal_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_drop_down.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/state_city_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class StatCityDropDown extends StatelessWidget {
  final PersonalGetXController controller = Get.put(PersonalGetXController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppDropDownList(
            borderColor: AppColor.darkBorderColor.withOpacity(0.2),
            title: LanguageConstants.state,
            height: 20,
            items: controller.states.map<DropdownMenuItem<String>>(
              (StatesModel state) {
                return DropdownMenuItem<String>(
                  onTap: () => controller.getSelectedState(state.name!),
                  value: state.name,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AppAssets.city,
                        color: AppColor.primaryColor,
                      ).setMarginOnly(right: 8.w),
                      Expanded(
                        child: Text(
                          state.name!,
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: AppColor.tagTextColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ).toList(),
            value: controller.selectedState,
            onChanged: (String value) {
              controller.getSelectedState(value);
            },
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: AppDropDownList(
            borderColor: AppColor.darkBorderColor.withOpacity(0.2),
            title: LanguageConstants.city,
            height: 20,
            items: controller.cities.map(
              (CitiesModel? city) {
                return DropdownMenuItem<String>(
                    value: city!.name,
                    child: Text(
                      city.name!,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: AppColor.tagTextColor,
                          ),
                    ));
              },
            ).toList(),
            value: controller.selectedCity,
            onChanged: (String value) {
              controller.getSelectedCity(value);
            },
          ),
        ),
      ],
    ).setMarginOnly(bottom: 16.h);
  }
}
