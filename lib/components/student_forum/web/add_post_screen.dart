import 'package:flutter/cupertino.dart';
import 'package:project_beta/components/student_forum/widgets/add_post_screen_mobile.dart';
import 'package:project_beta/controller/student_forum/post_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/src/web_template/web_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common/app_text_form_field.dart';
import 'package:project_beta/src/common_widgets//app_drop_down.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_tag_widget.dart';
import 'package:project_beta/theme/app_theme.dart';

class AddPostScreen extends StatelessWidget {
  static const pageLink = "/AddPostScreen";

  @override
  Widget build(BuildContext context) {
    return Responsive(
      tablet: AddPostScreenMobile(),
      mobile: AddPostScreenMobile(),
      desktop: WebTemplate(
        body: GetBuilder<PostGetXController>(
          init: PostGetXController(),
          builder: (controller) {
            return Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      AppDropDownList(
                        borderColor: AppColor.darkBorderColor.withOpacity(0.3),
                        labelTextStyle: Theme.of(context).textTheme.subtitle2,
                        height: 20,
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
                        hintText: LanguageConstants.subjectHere,
                        title: LanguageConstants.subject,
                        borderColor: AppColor.greenSpring,
                        borderWidth: 1.0,
                        textStyle: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(height: 6.h),
                      AppTagWidget(
                        title: LanguageConstants.description,
                        tagKey: controller.tagKey,
                        itemCount: 10,
                        onSubmit: (value) {
                          //controller.selectWeaknessTag(Item(title: value));
                          print(value);
                        },
                        itemBuilder: (index) {
                          //final item = controller.weakness[index];
                          return ItemTags(
                            index: index,
                            key: Key(index.toString()),
                            title: 'item!.pageTitle',
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.w, vertical: 2.h),
                            textStyle: Theme.of(context).textTheme.bodyText2!,
                            removeButton: ItemTagsRemoveButton(
                              onRemoved: () {
                                //controller.removeWeaknessTag(index);
                                return true;
                              },
                            ),
                          );
                        },
                      ).setMargins(
                        EdgeInsets.symmetric(vertical: 8.h),
                      )
                    ],
                  ),
                ),
                AppButton(
                  onTap: () {},
                  height: 22.h,
                  backgroundColor: AppColor.primaryColor,
                  label: LanguageConstants.publish.toUpperCase(),
                  textColor: AppColor.backgroundColor,
                  fontSize: 18.sp,
                ),
              ],
            ).setMarginOnly(
              left: 16.w,
              right: 16.w,
              bottom: 4.h,
              top: 12.h,
            );
          },
        ),
      ).setMarginSymmetric(
        horizontal: 48.w,
      ),
    );
  }
}
