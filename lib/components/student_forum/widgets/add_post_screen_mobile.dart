import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/get.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/controller/student_forum/post_getx_controller.dart';
import 'package:project_beta/src/common/app_text_form_field.dart';
import 'package:project_beta/src/common_widgets//app_drop_down.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_close_button.dart';
import 'package:project_beta/src/common_widgets/app_tag_widget.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/app_bar_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class AddPostScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBarTemplate(
        backgroundColor: AppColor.primaryColor,
        expandedHeight: 48.h,
        trialWidgetEnabled: true,
        title: LanguageConstants.addPost,
        fontSize: 16.sp,
        leading: false,
        trailingWidget: AppCloseButton(),
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
        ));
  }

// draftConfirmationDialog(context, controller) {
//   return isDraftSaved
//       ? isDraftSaved
//       : showModalBottomSheet(
//           context: context,
//           builder: (context) {
//             return Container(
//                 height: 240.0,
//                 color: Color(0xFF737373),
//                 child: Container(
//                   decoration: new BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: new BorderRadius.only(
//                           topLeft: const Radius.circular(40.0),
//                           topRight: const Radius.circular(40.0))),
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: MediaQuery.of(context).size.width * 0.05),
//                     child: ListView(
//                       children: [
//                         SizedBox(
//                           height: 8.h,
//                         ),
//                         Container(
//                           child: Center(
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: AppColor.greenSpring.withAlpha(90),
//                               ),
//                               width: 36.0,
//                               height: 4.0,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 12.0,
//                         ),
//                         Text(
//                           "Would you like to save this post as a draft ?",
//                           style: TextStyle(fontSize: 20.0),
//                         ),
//                         SizedBox(
//                           height: 12.0,
//                         ),
//                         AppButton(
//                           onTap: () {
//                             context.beamBack();
//                           },
//                           backgroundColor: AppColor.primaryColor,
//                           height: 28.h,
//                           fontSize: 22.sp,
//                           label: 'CANCEL',
//                           textColor: AppColor.backgroundColor,
//                         ),
//                         SizedBox(
//                           height: 12.0,
//                         ),
//                         AppButton(
//                           onTap: () async {
//                             await controller.saveAsDraft();
//                             context.beamBack();
//                           },
//                           backgroundColor: AppColor.primaryColor,
//                           height: 28.h,
//                           fontSize: 22.sp,
//                           label: 'SAVE AS DRAFT',
//                           textColor: AppColor.backgroundColor,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ));
//           });
// }
}
