import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/profile/personality_getx_controller.dart';
import 'package:project_beta/src/common_widgets/app_tag_widget.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';

class PersonalityWidget extends StatelessWidget {
  final PersonalityGetXController personalityController =
      Get.put(PersonalityGetXController());
  final GlobalKey<TagsState> tagKey = GlobalKey<TagsState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonalityGetXController>(
      builder: (controller) {
        return ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            AppTagWidget(
              title: LanguageConstants.strength,
              tagKey: controller.strengthTagKey,
              itemCount: controller.list.length,
              onSubmit: (value) {
                controller.selectTag(Item(title: value));
              },
              itemBuilder: (index) {
                final item = controller.list[index];
                return ItemTags(
                  index: index,
                  key: Key(index.toString()),
                  title: item!.title,
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  textStyle: Theme.of(context).textTheme.bodyText2!,
                  removeButton: ItemTagsRemoveButton(
                    onRemoved: () {
                      controller.removeTag(index);
                      return true;
                    },
                  ),
                );
              },
            ).setMargins(
              EdgeInsets.symmetric(vertical: 8.h),
            ),
            AppTagWidget(
              title: LanguageConstants.interests,
              tagKey: controller.interestsTagKey,
              itemCount: controller.interests.length,
              onSubmit: (value) {
                controller.selectInterestTag(Item(title: value));
              },
              itemBuilder: (index) {
                final item = controller.interests[index];
                return ItemTags(
                  index: index,
                  key: Key(index.toString()),
                  title: item!.title,
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  textStyle: Theme.of(context).textTheme.bodyText2!,
                  removeButton: ItemTagsRemoveButton(
                    onRemoved: () {
                      controller.removeInterestsTag(index);
                      return true;
                    },
                  ),
                );
              },
            ).setMargins(
              EdgeInsets.symmetric(vertical: 8.h),
            ),
            AppTagWidget(
              title: LanguageConstants.weakness,
              tagKey: controller.weaknessTagKey,
              itemCount: controller.weakness.length,
              onSubmit: (value) {
                controller.selectWeaknessTag(Item(title: value));
              },
              itemBuilder: (index) {
                final item = controller.weakness[index];
                return ItemTags(
                  index: index,
                  key: Key(index.toString()),
                  title: item!.title,
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  textStyle: Theme.of(context).textTheme.bodyText2!,
                  removeButton: ItemTagsRemoveButton(
                    onRemoved: () {
                      controller.removeWeaknessTag(index);
                      return true;
                    },
                  ),
                );
              },
            ).setMargins(
              EdgeInsets.symmetric(vertical: 8.h),
            )
          ],
        ).setMarginSymmetric(
          horizontal: Responsive.isMobile(context)
              ? 0
              : Responsive.isTablet(context)
                  ? 24.w
                  : 40.w,
          vertical: Responsive.isMobile(context) ? 2 : 24.h,
        );
      },
    );
  }
}
